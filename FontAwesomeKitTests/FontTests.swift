//
//  FontTests.swift
//  FontAwesomeKitTests
//
//  Created by vsccw on 2017/10/1.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit
import XCTest

@testable import FontAwesomeKit

class FontTests: XCTestCase {
    func testFont() {
        let font = UIFont.fa
        assert(font?.base == UIFont(name: "FontAwesome", size: 17))
        /// another
        let newFont = font?.fontSize(20)
        XCTAssertTrue(newFont == UIFont(name: "FontAwesome", size: 20))
    }
}
