//
//  Created by 程庆春 on 07/11/2016.
//  Copyright © 2016 qiuncheng.com. All rights reserved.
//  For more : http://fontawesome.io/cheatsheet/
//


import UIKit


@IBDesignable
open class FontAwesomeLabel: UILabel, FontAwesomeAble {

    /// unicode string you can set through UIStoryboard or xib.
    @IBInspectable
    public var unicode: String = "" {
        didSet {
            configFontAwesomeLabel()
        }
    }
    open override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configFontAwesomeLabel()

    }
    open override func awakeFromNib() {
        super.awakeFromNib()
        configFontAwesomeLabel()
    }
}
