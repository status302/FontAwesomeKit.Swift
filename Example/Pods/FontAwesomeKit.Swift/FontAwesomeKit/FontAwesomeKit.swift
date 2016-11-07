//  MIT License
//
//  Copyright (c) 2016 QiunCheng
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//

import UIKit


public extension UIImage {
    /// Translate a UILabel? to UIImage?, can be nil.
    ///
    /// - parameter label: The label you gave
    ///
    /// - returns: The image you will get
    internal class func imageWithLabel(_ label: UILabel?) -> UIImage? {
        guard let targetLabel = label else {
            return nil
        }
        UIGraphicsBeginImageContextWithOptions(targetLabel.bounds.size, false, UIScreen.main.scale)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        targetLabel.layer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()

        UIGraphicsEndImageContext()
        return image
    }

    /// A convenience init to translate any FontAwesomeType to UIImage.
    ///
    /// - parameter type:      The FontAwesomeType you should give.
    /// - parameter fontSize:  The fontSize you can give, default is 80.
    /// - parameter tintColor: The UIImage filled color you get, default is UIColor.lightGray.
    ///
    /// - returns: The image you will get, default size is (80, 80).
    public convenience init(awesomeType type: FontAwesomeType, size fontSize: CGFloat = 80, color tintColor: UIColor = UIColor.lightGray) {

        let imageLabel = UILabel()
        imageLabel.fa_text = type
        imageLabel.font = UIFont(fa_fontSize: fontSize)
        imageLabel.textColor = tintColor
        imageLabel.sizeToFit()
        let image = UIImage.imageWithLabel(imageLabel)
        guard let img = image?.cgImage else {
            self.init()
            return
        }
        self.init(cgImage: img)
    }
}


public extension String {
    /// The icon String with FontAwesomeType, and you should set the String font to 'FontAwesome'. Just as 'UIFont(fa_size: size)'
    ///
    /// - parameter type: The type you should give.
    ///
    /// - returns: The string icon you will get.
    public static func fontAwesome(_ type: FontAwesomeType) -> String {
        return String(format: "%C", type.rawValue)
    }

    /// The icon String with undefined fontAwesome unicode, and you should set the unicode to such as '0xf001'.
    ///
    /// - parameter unicode: The unicode you should set. such as '0xf107'
    ///     icon unicode here : http://fontawesome.io/cheatsheet/
    ///
    /// - returns: The string icon you will get.
    public static func fontAwesome(undefined unicode: UniChar) -> String {
        return String(format: "%C", unicode)
    }
}


public extension UIFont {

    ///
    /// a convenience init? with default font.
    ///
    /// - important:
    /// Expecially with property 'fa_font'.
    ///
    /// - parameters: 
    ///    - fontSize: the size of default font.
    public convenience init?(fa_fontSize fontSize: CGFloat) {

        let name = "FontAwesome"
        if UIFont.fontNames(forFamilyName: name).isEmpty {
            FontLoader.loadFont(name)
        }
        self.init(name: FontAwesomeCommon.kFontAwesome, size: fontSize)
    }

}

public extension UILabel {

    ///
    /// A new property to UILabel, which is FontAwesome icon.
    /// default is nil.
    /// default font size is '17.0'.
    ///
    public var fa_text: FontAwesomeType {
        set {
            self.font = UIFont(name: FontAwesomeCommon.kFontAwesome, size: 17.0)
            let cChar = String(format: "%C", newValue.rawValue)
            self.text = cChar
        }
        get {
            return self.fa_text
        }
    }
}

public extension UIButton {
    /// Set button title with AwesomeType icon.
    ///
    /// - parameter type:  The fontAwesome type, and you don't need to 'setImage' or 'setBackgroundImage'
    /// - parameter state: The state that uses the specified title. The possible values are described in UIControlState.
    public func fa_setTitle(_ type: FontAwesomeType, for state: UIControlState) {
        self.titleLabel?.font = UIFont(fa_fontSize: 28)
        let cChar = String(format: "%C", type.rawValue)

        self.setTitle(cChar, for: state)
    }
}
public extension UIBarButtonItem {
    /// Newly initialized item with the fontAwesome icon.
    ///
    /// - parameter type:     The fontAwesome type.
    /// - parameter fontSize: The font size, default is '24.0'.
    /// - parameter style:    The style of the item. One of the constants defined in UIBarButtonItemStyle.
    /// - parameter target:   The object that receives the action message.
    /// - parameter action:   The action to send to target when this item is selected.
    ///
    /// - returns: Newly initialized item with fontAwesome icon.
    public convenience init(awesomeType type: FontAwesomeType, size fontSize: CGFloat = 24.0, style: UIBarButtonItemStyle, target: Any?, action: Selector?) {
        let barItemLabel = UILabel()
        barItemLabel.fa_text = type
        barItemLabel.font = UIFont(fa_fontSize: fontSize)
        barItemLabel.sizeToFit()

        let img = UIImage.imageWithLabel(barItemLabel)
        self.init(image: img, style: style, target: target, action: action)
    }
}

public extension UINavigationItem {

    /// Set UINavigationItem with fontAwesome Icon.
    ///
    /// - parameter type:      The fontAwesome type.
    /// - parameter fontSize:  The font size, default is '32.0'.
    /// - parameter tintColor: The fontAwesome Icon filled color, default is 'UIColor.darkGray'
    public func fa_setTitle(_ type: FontAwesomeType, size fontSize: CGFloat = 32.0, color tintColor: UIColor = UIColor.darkGray) {
        let titleLabel = UILabel()
        titleLabel.fa_text = type
        titleLabel.font = UIFont(fa_fontSize: fontSize)
        titleLabel.textColor = tintColor
        titleLabel.sizeToFit()
        self.titleView = titleLabel
    }
}

// MARK: - Private

private class FontLoader {
    class func loadFont(_ name: String) {
        let bundle = Bundle(for: FontLoader.self)
        let identifier = bundle.bundleIdentifier

        var fontURL: URL
        if identifier?.hasPrefix("org.cocoapods") == true {
            // If this framework is added using CocoaPods, resources is placed under a subdirectory
            fontURL = bundle.url(forResource: name, withExtension: "otf", subdirectory: "FontAwesomeKit.Swift.bundle")!
        } else {
            fontURL = bundle.url(forResource: name, withExtension: "otf")!
        }

        let data = try! Data(contentsOf: fontURL)

        let provider = CGDataProvider(data: data as CFData)
        let font = CGFont(provider!)

        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterGraphicsFont(font, &error) {
            let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
            let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
            NSException(name: NSExceptionName.internalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
        }
    }
}
fileprivate struct FontAwesomeCommon {
    static let kFontAwesome = "FontAwesome"
}
