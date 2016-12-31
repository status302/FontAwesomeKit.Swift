//
//  Created by 程庆春 on 07/11/2016.
//  Copyright © 2016 qiuncheng.com. All rights reserved.
//  For more : http://fontawesome.io/cheatsheet/
//

import UIKit

@IBDesignable
open class FontAwesomeButton: UIButton, FontAwesomeAble {
    
    @IBInspectable
    public var normalUnicode: String = "" {
        didSet {
            configFontAwesomeButtonWithNormalState()
        }
    }

    @IBInspectable
    public var highlightedUnicode: String = "" {
        didSet {
            configFontAwesomeButtonWithHighlightedState()
        }
    }
    
    @IBInspectable
    public var selectedUnicode: String = "" {
        didSet {
            configFontAwesomeButtonWithSelectedState()
        }
    }
    
    @IBInspectable
    public var disabledUnicode: String = "" {
        didSet {
            configFontAwesomeButtonWithDisableState()
        }
    }

    override open func awakeFromNib() {
        super.awakeFromNib()
        configFontAwesomeButton()
    }
    
    override open func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configFontAwesomeButton()
    }
}
