//
//  FontAwesomeExampleCell.swift
//  Example
//
//  Created by vsccw on 2019/3/26.
//  Copyright © 2019 qiuncheng.com. All rights reserved.
//

import UIKit
import FontAwesomeKit_Swift

class FontAwesomeExampleCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var type: FontAwesomeType = .unknown {
        didSet {
            titleLabel.fa.text = type
        }
    }
}
