//
//  Created by 程庆春 on 07/11/2016.
//  Copyright © 2016 qiuncheng.com. All rights reserved.
//

import UIKit

@IBDesignable public class FontAwesomeButton: UIButton, FontAwesomeAble {

    @IBInspectable public var awesomeUnicode: String = "" {
        didSet {
            configFontAwesomeButton()
        }
    }

    override public func awakeFromNib() {
        super.awakeFromNib()
        configFontAwesomeButton()
    }
    
    override public func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configFontAwesomeButton()
    }
}
