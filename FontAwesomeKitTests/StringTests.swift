//
//  StringTests.swift
//  FontAwesomeKitTests
//
//  Created by vsccw on 2017/10/1.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit
import XCTest

@testable import FontAwesomeKit

class StringTests: XCTestCase {
    func testSubstring() {
        let str = "1234567890"
        let substringTo = str.fa.substring(to: 4)
        XCTAssertTrue(substringTo == "1234")
        
        let substringFrom = str.fa.substring(from: 6)
        XCTAssertTrue(substringFrom == "7890")
    }
    
    func testFontAwesomeEqualable() {
        let android = FontAwesomeType.fa_android
        let typeStr = String.fa.fontAwesome(android)
        let androidUnicode = String(format: "%C", 0xf17b)
        assert(typeStr == androidUnicode)
    }
}
