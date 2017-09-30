//
//  FontAwesomeKit+String.swift
//  FontAwesomeKit
//
//  Created by vsccw on 2017/9/30.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit

extension String: FontAwesomeCompatiable {
    /// convenient property to create a empty `FontAwesomeKit("")`
    static var fa: FontAwesomeKit<String> {
        return FontAwesomeKit("")
    }
}

public extension FontAwesomeKit where Base == String {
    
    /// Use this method to substring from index to endIndex.
    ///
    /// - Parameter to: from index.
    /// - Returns: substring with special index.
    public func substring(from: Int) -> String {
        let index = base.index(base.startIndex, offsetBy: from)
        return String(base[index ..< base.endIndex])
    }
    
    /// Use this method to substring from startIndex to index.
    ///
    /// - Parameter to: to index.
    /// - Returns: substring with special index.
    public func substring(to: Int) -> String {
        let index = base.index(base.startIndex, offsetBy: to)
        return String(base[base.startIndex ..< index])
    }
}

public extension FontAwesomeKit where Base == String {
    /// The icon String with FontAwesomeType, and you should set the String font to 'FontAwesome'. Just as 'UIFont(fa_size: size)'
    ///
    /// - parameter type: The type you should give.
    ///
    /// - returns: The string icon you will get.
    public func fontAwesome(_ type: FontAwesomeType) -> String {
        return type.fa.cCharString
    }
    
    /// The icon String with undefined fontAwesome unicode, and you should set the unicode to such as '0xf001'.
    ///
    /// - parameter unicode: The unicode you should set. such as '0xf107'
    ///     icon unicode here : http://fontawesome.io/cheatsheet/
    ///
    /// - returns: The string icon you will get.
    public func fontAwesome(undefined unicode: UniChar) -> String {
        return unicode.fa.cCharString
    }
}

public extension String {
    /// The icon String with FontAwesomeType, and you should set the String font to 'FontAwesome'. Just as 'UIFont(fa_size: size)'
    ///
    /// - parameter type: The type you should give.
    ///
    /// - returns: The string icon you will get.
    @available(*, deprecated, message: "Deprecated now, use `fa.fontAwesome(_:)` instead.", renamed: "fa.fontAwesome(_:)")
    public static func fontAwesome(_ type: FontAwesomeType) -> String {
        return type.fa.cCharString
    }
    
    /// The icon String with undefined fontAwesome unicode, and you should set the unicode to such as '0xf001'.
    ///
    /// - parameter unicode: The unicode you should set. such as '0xf107'
    ///     icon unicode here : http://fontawesome.io/cheatsheet/
    ///
    /// - returns: The string icon you will get.
    @available(*, deprecated, message: "Deprecated now, use `fa.fontAwesome(undefined:)` instead.", renamed: "fa.fontAwesome(undefined:)")
    public static func fontAwesome(undefined unicode: UniChar) -> String {
        return unicode.fa.cCharString
    }
}

// MARK: - Deprecated.
extension String {
    
    /// Use this method to substring from index to endIndex.
    ///
    /// - Parameter to: from index.
    /// - Returns: substring with special index.
    @available(*, deprecated, message: "Deprecated now, use `fa.substring` instead.", renamed: "fa.substring(from:)")
    func fa_substring(from: Int) -> String {
        let index = self.index(self.startIndex, offsetBy: from)
        return String(self[index ..< endIndex])
    }
    
    /// Use this method to substring from startIndex to index.
    ///
    /// - Parameter to: to index.
    /// - Returns: substring with special index.
    @available(*, deprecated, message: "Deprecated now, use `fa.substring` instead.", renamed: "fa.substring(to:)")
    func fa_substring(to: Int) -> String {
        let index = self.index(self.startIndex, offsetBy: to)
        return String(self[startIndex ..< index])
    }
}
