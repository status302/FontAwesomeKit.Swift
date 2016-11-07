//
//  Created by 程庆春 on 07/11/2016.
//  Copyright © 2016 qiuncheng.com. All rights reserved.
//  For more : http://fontawesome.io/cheatsheet/


import UIKit


@IBDesignable public class FontAwesomeLabel: UILabel, FontAwesomeAble{

    @IBInspectable public var awesomeUnicode: String = "" {
        didSet {
            configFontAwesomeLabel()
        }
    }
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        configFontAwesomeLabel()

    }
    public override func awakeFromNib() {
        super.awakeFromNib()
        configFontAwesomeLabel()
    }
}
