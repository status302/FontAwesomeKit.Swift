//
//  Created by 程庆春 on 07/11/2016.
//  Copyright © 2016 qiuncheng.com. All rights reserved.
//  For more : http://fontawesome.io/cheatsheet/
//

import UIKit

@IBDesignable
open class FontAwesomeButton: UIButton, FontAwesomeAble {
    
    /// unicode string for UIButton's normal status you can set through UIStoryboard or xib.
    @IBInspectable
    public var normalUnicode: String = "" {
        didSet {
            configFontAwesomeButtonWithNormalState()
        }
    }
    
    /// unicode string for UIButton's highlighted status you can set through UIStoryboard or xib.
    @IBInspectable
    public var highlightedUnicode: String = "" {
        didSet {
            configFontAwesomeButtonWithHighlightedState()
        }
    }
    
    /// unicode string for UIButton's selected status you can set through UIStoryboard or xib.
    @IBInspectable
    public var selectedUnicode: String = "" {
        didSet {
            configFontAwesomeButtonWithSelectedState()
        }
    }
    
    /// unicode string for UIButton's disabled status you can set through UIStoryboard or xib.
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
