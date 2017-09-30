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

extension UIFont: FontAwesomeCompatiable { }

public extension FontAwesomeKit where Base: UIFont {
    /// Use this method to change font size, that you create from `UIFont.fa?`.
    ///
    /// - Parameter size: new size you want to set.
    /// - Returns: new `UIFont`.
    @discardableResult
    public func fontSize(_ size: CGFloat) -> UIFont {
        return base.withSize(size)
    }
}

public extension UIFont {
    
    /// Create a new `UIFont` use `UIFont.fa`
    public static var fa: FontAwesomeKit<UIFont>? {
        let name = FontAwesomeCommon.kFontAwesome
        if UIFont.fontNames(forFamilyName: name).isEmpty {
            FontLoader.loadFont(name)
        }
        if let font = UIFont(name: name, size: 17) {
            return FontAwesomeKit(font)
        }
        else {
            return nil
        }
    }
}

extension UIImage: FontAwesomeCompatiable { }

public extension UIImage {
    /// Translate a UILabel? to UIImage?, can be nil.
    ///
    /// - parameter label: The label you gave
    ///
    /// - returns: The image you will get
    public class func image(with label: UILabel?) -> UIImage? {
        guard let targetLabel = label else {
            return nil
        }
        UIGraphicsBeginImageContextWithOptions(targetLabel.bounds.size, false, UIScreen.main.scale)
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        targetLabel.layer.render(in: context)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        defer { UIGraphicsEndImageContext() }
        return image
    }
    
    /// A convenience init to translate any FontAwesomeType to UIImage.
    ///
    /// - parameter type:      The FontAwesomeType you should give.
    /// - parameter fontSize:  The fontSize you can give, default is 80.
    /// - parameter tintColor: The UIImage filled color you get, default is UIColor.lightGray.
    ///
    /// - returns: The image you will get, default size is (80, 80).
    public convenience init?(awesomeType type: FontAwesomeType, size fontSize: CGFloat = 80, textColor color: UIColor = UIColor.lightGray) {

        let imageLabel = UILabel()
        imageLabel.fa.text = type
        imageLabel.font = UIFont.fa?.fontSize(fontSize)
        imageLabel.textColor = color
        imageLabel.sizeToFit()
        let image = UIImage.image(with: imageLabel)
        guard let img = image?.cgImage else {
            return nil
        }
        self.init(cgImage: img)
    }
}

extension UILabel: FontAwesomeCompatiable { }

public extension FontAwesomeKit where Base: UILabel {

    ///
    /// A new property to UILabel, which is FontAwesome icon.
    /// default is nil.
    /// default font size is '17.0'.
    ///
    public var text: FontAwesomeType {
        set {
            base.font = UIFont.fa?.fontSize(17.0)
            //UIFont(name: FontAwesomeCommon.kFontAwesome, size: 17.0)
            base.text = newValue.fa.cCharString
        }
        get {
            return base.fa.text
        }
    }

    /// Change UILabel's fontSize. Default is `17.0`.
    ///
    /// - Parameter size: new size.
    public func fontSize(_ size: CGFloat) {
        let newFont = base.font
        base.font = newFont?.fa.fontSize(size)
    }
}

extension UIButton: FontAwesomeCompatiable { }

public extension FontAwesomeKit where Base: UIButton {
    /// Set button title with AwesomeType icon.
    ///
    /// - parameter type:  The fontAwesome type, and you don't need to 'setImage' or 'setBackgroundImage'
    /// - parameter state: The state that uses the specified title. The possible values are described in UIControlState.
    public func setTitle(_ type: FontAwesomeType, for state: UIControlState) {
        base.titleLabel?.font = UIFont.fa?.fontSize(28)
        base.setTitle(type.fa.cCharString, for: state)
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
        barItemLabel.fa.text = type
        barItemLabel.font = UIFont.fa?.fontSize(fontSize)
        barItemLabel.sizeToFit()

        let img = UIImage.image(with: barItemLabel)
        self.init(image: img, style: style, target: target, action: action)
    }
}

extension UINavigationItem: FontAwesomeCompatiable { }

public extension FontAwesomeKit where Base: UINavigationItem {

    /// Set UINavigationItem with fontAwesome Icon.
    ///
    /// - parameter type:      The fontAwesome type.
    /// - parameter fontSize:  The font size, default is '32.0'.
    /// - parameter tintColor: The fontAwesome Icon filled color, default is 'UIColor.darkGray'
    public func setTitle(_ type: FontAwesomeType, size fontSize: CGFloat = 32.0, color tintColor: UIColor = UIColor.darkGray) {
        let titleLabel = UILabel()
        titleLabel.fa.text = type
        titleLabel.font = UIFont.fa?.fontSize(fontSize)
        titleLabel.textColor = tintColor
        titleLabel.sizeToFit()
        base.titleView = titleLabel
    }
}

// MARK: - Deprecated.

public extension UIButton {
    /// Set button title with AwesomeType icon.
    ///
    /// - parameter type:  The fontAwesome type, and you don't need to 'setImage' or 'setBackgroundImage'
    /// - parameter state: The state that uses the specified title. The possible values are described in UIControlState.
    @available(*, deprecated, message: "UIButton's fa_setTitle is deprecated, use `fa.setTitle` instead.", renamed: "fa.setTitle(_:)")
    public func fa_setTitle(_ type: FontAwesomeType, for state: UIControlState) {
        self.titleLabel?.font = UIFont(fa_fontSize: 28)
        self.setTitle(type.fa.cCharString, for: state)
    }
}

extension UIFont {
    ///
    /// a convenience init? with default font.
    ///
    /// - important:
    /// Expecially with property 'fa_font'.
    ///
    /// - parameters:
    ///    - fontSize: the size of default font.
    @available(*, deprecated, message: "Convenience init is deprecated. Use `UIFont.fa?.fontSize(_:)` instead.", renamed: "UIFont.fa.fontSize(_:)")
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
    @available(*, deprecated, message: "UILabel's fa_setText is deprecated, use `fa.text` instead.", renamed: "fa.text")
    public var fa_text: FontAwesomeType {
        set {
            self.font = UIFont(name: FontAwesomeCommon.kFontAwesome, size: 17.0)
            self.text = newValue.fa.cCharString
        }
        get {
            return self.fa_text
        }
    }
}

public extension UINavigationItem {
    
    /// Set UINavigationItem with fontAwesome Icon.
    ///
    /// - parameter type:      The fontAwesome type.
    /// - parameter fontSize:  The font size, default is '32.0'.
    /// - parameter tintColor: The fontAwesome Icon filled color, default is 'UIColor.darkGray'
    @available(*, deprecated, message: "Deprecated now, use `fa.setTitle(_:)` instead.", renamed: "fa.setTitle(_:)")
    public func fa_setTitle(_ type: FontAwesomeType, size fontSize: CGFloat = 32.0, color tintColor: UIColor = UIColor.darkGray) {
        let titleLabel = UILabel()
        titleLabel.fa.text = type
        titleLabel.font = UIFont.fa?.fontSize(fontSize)
        titleLabel.textColor = tintColor
        titleLabel.sizeToFit()
        self.titleView = titleLabel
    }
}
