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
            str = str.fa.substring(from: 2)
        }

        if let unicode = UniChar(str, radix: 16) {
            text = String.fa.fontAwesome(undefined: unicode)
            font = UIFont.fa?.fontSize(min(frame.width, frame.height))
        }
    }
}

extension FontAwesomeAble where Self: UIButton {
    
    /// Change when value changed at UIStoryboard or xib
    func configFontAwesomeButton() {
        configFontAwesomeButtonWithNormalState()
        configFontAwesomeButtonWithHighlightedState()
        configFontAwesomeButtonWithSelectedState()
        configFontAwesomeButtonWithDisableState()
    }
    
    /// Change when selected state value changed at UIStoryboard or xib
    func configFontAwesomeButtonWithSelectedState() {
        guard let str = selectedUnicode else { return }
        configFontAwesomeButtonWith(unicode: str, state: .selected)
    }
    
    /// Change when disabled state value changed at UIStoryboard or xib
    func configFontAwesomeButtonWithDisableState() {
        guard let str = disabledUnicode else { return }
        configFontAwesomeButtonWith(unicode: str, state: .disabled)
    }
    
    /// Change when highlighted state value changed at UIStoryboard or xib
    func configFontAwesomeButtonWithHighlightedState() {
        guard let str = highlightedUnicode else { return }
        configFontAwesomeButtonWith(unicode: str, state: .highlighted)
    }
    
    /// Change when normal state value changed at UIStoryboard or xib
    func configFontAwesomeButtonWithNormalState() {
        guard let str = normalUnicode else { return }
        
        configFontAwesomeButtonWith(unicode: str, state: .normal)
    }
    
    private func configFontAwesomeButtonWith(unicode: String, state: UIControlState) {
        var str: String = unicode
        if str.hasPrefix("0x") {
            str = str.fa.substring(from: 2)
        }
        if let unicodeStr = UniChar(str, radix: 16) {
            titleLabel?.font = UIFont.fa?.fontSize(min(frame.width, frame.height))
            setTitle(String.fa.fontAwesome(undefined: unicodeStr), for: state)
        }
    }
}


