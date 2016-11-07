//
//  Created by 程庆春 on 07/11/2016.
//  Copyright © 2016 qiuncheng.com. All rights reserved.
//

import UIKit

internal protocol FontAwesomeAble {
    var awesomeUnicode: String { get set }
}

extension FontAwesomeAble where Self: UILabel {
    func configFontAwesomeLabel() {
        var str: String = awesomeUnicode
        if str.hasPrefix("0x") {
            str = (self.awesomeUnicode as NSString).substring(from: 2)
        }
        if let unicode = UniChar(str, radix: 16) {
            self.text = String.fontAwesome(undefined: unicode)
            self.font = UIFont(fa_fontSize: min(self.frame.size.width, self.frame.size.height))
        }
    }
}

extension FontAwesomeAble where Self: UIButton {
    func configFontAwesomeButton() {
        var str: String = awesomeUnicode
        if str.hasPrefix("0x") {
            str = (awesomeUnicode as NSString).substring(from: 2)
        }
        if let unicode = UniChar(str, radix: 16) {
            self.titleLabel?.font = UIFont(fa_fontSize: min(self.frame.size.width, self.frame.size.height))
            self.setTitle(String.fontAwesome(undefined: unicode), for: .normal)
        }
    }
}

extension FontAwesomeAble where Self: UIBarButtonItem {
    func configFontAwesomeBarButtonItem() {
        var str: String = awesomeUnicode
        if str.hasPrefix("0x") {
            str = (str as NSString).substring(from: 2)
        }
        if let unicode = UniChar(str, radix: 16) {
            let attrs = [NSFontAttributeName: UIFont(fa_fontSize: 20)]
            self.setTitleTextAttributes(attrs, for: .normal)
            self.title = String.fontAwesome(undefined: unicode)
        }
    }
}
