//
//  FontLoader.swift
//  FontAwesomeKit
//
//  Created by vsccw on 2017/9/30.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit

class FontLoader {
    /// Load font from current framework or cocoapods bundle.
    ///
    /// - Parameter name: font name, `FontAwesome` is default.
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
        
        do {
            let data = try Data(contentsOf: fontURL)
            guard let provider = CGDataProvider(data: data as CFData) else {
                return
            }
            var font: CGFont
            #if swift(>=4.0)
                font = CGFont(provider)!
            #else
                font = CGFont(provider)
            #endif

            var error: Unmanaged<CFError>?
            if !CTFontManagerRegisterGraphicsFont(font, &error) {
                let errorDescription: CFString = CFErrorCopyDescription(error!.takeUnretainedValue())
                let nsError = error!.takeUnretainedValue() as AnyObject as! NSError
                NSException(name: NSExceptionName.internalInconsistencyException, reason: errorDescription as String, userInfo: [NSUnderlyingErrorKey: nsError]).raise()
            }
        }
        catch {
            return
        }
    }
}

struct FontAwesomeCommon {
    /// name of `FontAwesome` font.
    static let kFontAwesome = "FontAwesome"
}
