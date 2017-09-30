//
//  UIButtonTests.swift
//  FontAwesomeKitTests
//
//  Created by vsccw on 2017/10/1.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit
import XCTest

@testable import FontAwesomeKit

class UIButtonTests: XCTestCase {
    func testButtonTitle() {
        let button = UIButton()
        button.fa.setTitle(.fa_apple, for: .normal)
        XCTAssert((button.titleLabel?.text != nil), "button titleLabel should not be nil.")
    }
    
    
}
