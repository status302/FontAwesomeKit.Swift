//
//  UILabelTests.swift
//  FontAwesomeKitTests
//
//  Created by vsccw on 2017/10/1.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit
import XCTest
@testable import FontAwesomeKit

class UILabelTests: XCTestCase {
    func testLabelFont() {
        let label = UILabel()
        label.font = UIFont.fa?.fontSize(50)
        XCTAssert((label.font != nil), "Icon font should not be nil.")
    }
    
    func testLabelText() {
        let label = UILabel()
        label.fa.text = .fa_android
        XCTAssert((label.text != nil ), "Icon text should not be nil.")
    }
}
