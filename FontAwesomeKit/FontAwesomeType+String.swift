//
//  FontAwesomeType+String.swift
//  FontAwesomeKit
//
//  Created by vsccw on 2017/9/30.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit

extension FontAwesomeType: FontAwesomeCompatiable { }

public extension FontAwesomeKit where Base == FontAwesomeType {
    /// Get `FontAwesomeType` cChar string.
    public var cCharString: String {
        return String(format: "%C", base.rawValue)
    }
}

extension UniChar: FontAwesomeCompatiable { }

public extension FontAwesomeKit where Base == UniChar {
    /// Get `UniChar` cChar string.
    public var cCharString: String {
        return String(format: "%C", base)
    }
}
