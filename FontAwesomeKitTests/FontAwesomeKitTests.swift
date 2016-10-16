//
//  FontAwesomeKitTests.swift
//  FontAwesomeKitTests
//
//  Created by 程庆春 on 2016/10/15.
//  Copyright © 2016年 qiuncheng.com. All rights reserved.
//

import XCTest
import UIKit
@testable import FontAwesomeKit

class FontAwesomeKitTests: XCTestCase {

    func testLabelFont() {
        let label = UILabel()
        label.fa_font = UIFont(fa_fontSize: 50)
        XCTAssert((label.font != nil), "Icon font should not be nil.")
    }
    func testLabelText() {
        let label = UILabel()
        label.fa_text = .fa_android
        XCTAssert((label.text != nil ), "Icon text should not be nil.")
    }
    func testButtonTitle() {
        let button = UIButton()
        button.fa_setTitle(.fa_apple, for: .normal)
        XCTAssert((button.titleLabel != nil), "button titleLabel should not be nil.")
    }
    func testBarButton() {
        let barButton = UIBarButtonItem(awesomeType: .fa_align_left, size: 100, style: .plain, target: nil, action: nil)
        XCTAssert((barButton.image != nil), "BarButtonItem should not be nil.")
    }
    func testBarButtonItemTitle() {
        let barItem = UIBarButtonItem()
        let attrs = [NSFontAttributeName: UIFont(fa_fontSize: 100)]
        barItem.setTitleTextAttributes(attrs, for: .normal)
        barItem.title = String.fontAwesome(awesomeType: .fa_git)
        XCTAssertEqual(barItem.title, String(format: "%C", 0xf1d3))
    }
    func testTitleWithUnicode() {
        let str = String.fontAwesome(undefined: 0xf042)
        let adjustStr = String.fontAwesome(awesomeType: .fa_adjust)
        XCTAssertEqual(str, adjustStr)
    }

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
