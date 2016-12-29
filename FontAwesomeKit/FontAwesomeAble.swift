//
//  Created by 程庆春 on 07/11/2016.
//  Copyright © 2016 qiuncheng.com. All rights reserved.
//

import UIKit

@objc internal protocol FontAwesomeAble {
    @objc optional var unicode: String { get set }
    @objc optional var normalUnicode: String { get set }
    @objc optional var highlightedUnicode: String { get set }
    @objc optional var selectedUnicode: String { get set }
    @objc optional var disabledUnicode: String { get set }
}

extension FontAwesomeAble where Self: UILabel {
    func configFontAwesomeLabel() {
        guard var str = unicode else { return }
       
        if str.hasPrefix("0x") {
            str = str.fa_substring(from: 2)
        }

        if let unicode = UniChar(str, radix: 16) {
            text = String.fontAwesome(undefined: unicode)
            font = UIFont(fa_fontSize: min(frame.width, frame.height))
        }
    }
}

extension FontAwesomeAble where Self: UIButton {
    
    func configFontAwesomeButton() {
        configFontAwesomeButtonWithNormalState()
        configFontAwesomeButtonWithHighlightedState()
        configFontAwesomeButtonWithSelectedState()
        configFontAwesomeButtonWithDisableState()
    }
    
    func configFontAwesomeButtonWithSelectedState() {
        guard let str = selectedUnicode else { return }
        configFontAwesomeButtonWith(unicode: str, state: .selected)
    }
    
    func configFontAwesomeButtonWithDisableState() {
        guard let str = disabledUnicode else { return }
        configFontAwesomeButtonWith(unicode: str, state: .disabled)
    }
    
    func configFontAwesomeButtonWithHighlightedState() {
        guard let str = highlightedUnicode else { return }
        configFontAwesomeButtonWith(unicode: str, state: .highlighted)
    }
    
    func configFontAwesomeButtonWithNormalState() {
        guard let str = normalUnicode else { return }
        
        configFontAwesomeButtonWith(unicode: str, state: .normal)
    }
    
    private func configFontAwesomeButtonWith(unicode: String, state: UIControlState) {
        var str: String = unicode
        if str.hasPrefix("0x") {
            str = str.fa_substring(from: 2)
        }
        if let unicodeStr = UniChar(str, radix: 16) {
            titleLabel?.font = UIFont(fa_fontSize: min(frame.width, frame.height))
            setTitle(String.fontAwesome(undefined: unicodeStr), for: state)
        }
    }
}

extension String {
    func fa_substring(from: Int) -> String {
        let index = self.index(self.startIndex, offsetBy: from)
        return self.substring(from: index)
    }
    func fa_substring(to: Int) -> String {
        let index = self.index(self.startIndex, offsetBy: to)
        return self.substring(to: index)
    }
}
