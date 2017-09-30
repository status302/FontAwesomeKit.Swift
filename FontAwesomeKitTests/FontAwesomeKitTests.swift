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
    
    func testBarButton() {
        let barButton = UIBarButtonItem(awesomeType: .fa_align_left, size: 100, style: .plain, target: nil, action: nil)
        XCTAssert((barButton.image != nil), "BarButtonItem should not be nil.")
    }
    
    func testBarButtonItemTitle() {
        let barItem = UIBarButtonItem()
        let attrs = [NSAttributedStringKey.font: UIFont.fa?.fontSize(100)]
        barItem.setTitleTextAttributes((attrs as Any as! [NSAttributedStringKey : Any]) , for: .normal)
        barItem.title = String.fa.fontAwesome(.fa_git)
        XCTAssertEqual(barItem.title, String(format: "%C", 0xf1d3))
    }
    
    func testTitleWithUnicode() {
        let str = String.fa.fontAwesome(undefined: 0xf042)
        let adjustStr = String.fa.fontAwesome(.fa_adjust)
        XCTAssertEqual(str, adjustStr)
    }
    
    func testBarItem() {
        let barItem = UIBarButtonItem(awesomeType: .fa_android, size: 100, style: .plain, target: nil, action: nil)
        XCTAssert(barItem.image != nil, "barItem image should not be nil.")
    }
    
    func testFontAwesomeLabel() {
        let label = FontAwesomeLabel()
        label.unicode = "0xf26e"
        XCTAssertTrue(label.text == String.fa.fontAwesome(.fa_500px), "label text should be .fa_500px.")
    }
    
    func testFontAwesomeButton() {
        let button = FontAwesomeButton()
        button.disabledUnicode = "0xf037"
        button.normalUnicode = "0xf039"
        button.selectedUnicode = "0xf036"
        button.highlightedUnicode = "0xf038"
        
        XCTAssertTrue(button.title(for: .disabled) == String.fa.fontAwesome(.fa_align_center), "button disable string should be .fa_align_center")
        XCTAssertTrue(button.title(for: .normal) == String.fa.fontAwesome(.fa_align_justify), "button normal string should be .fa_align_justify")
        XCTAssertTrue(button.title(for: .selected) == String.fa.fontAwesome(.fa_align_left), "button selected string should be .fa_align_left")
        XCTAssertTrue(button.title(for: .highlighted) == String.fa.fontAwesome(.fa_align_right), "button highlighted string should be .fa_align_right")
    }
    
    func test470() {
        let label = UILabel()
        label.fa.text = .fa_address_book
        label.font = UIFont.fa?.fontSize(50)
        XCTAssert(label.text == String.fa.fontAwesome(undefined: 0xf2b9), "label for 4.7.0 will be correctly.")
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
