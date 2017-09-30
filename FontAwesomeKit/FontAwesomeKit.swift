//
//  FontAwesomeKit.swift
//  FontAwesomeKit
//
//  Created by vsccw on 2017/9/29.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit

public protocol FontAwesomeCompatiable {
    associatedtype FontAwesomeCompatiable
    var fa: FontAwesomeCompatiable { get }
}

public extension FontAwesomeCompatiable {
    var fa: FontAwesomeKit<Self> {
        get { return FontAwesomeKit(self) }
    }
}

public final class FontAwesomeKit<Base> {
    let base: Base
    init(_ base: Base) {
        self.base = base
    }
}
