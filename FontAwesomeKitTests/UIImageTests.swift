//
//  UIImageTests.swift
//  FontAwesomeKitTests
//
//  Created by vsccw on 2017/10/1.
//  Copyright © 2017年 qiuncheng.com. All rights reserved.
//

import UIKit
import XCTest

@testable import FontAwesomeKit

class UIImageTests: XCTestCase {
    func testImageFromLabel() {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.text = "hello world"
        label.sizeToFit()
        let image = UIImage.image(with: label)
        assert(image != nil)
    }
    
    func testFontAwesomeImage() {
        let image = UIImage(awesomeType: .fa_500px, size: 20, textColor: UIColor.red)
        assert(image != nil)
    }
}
