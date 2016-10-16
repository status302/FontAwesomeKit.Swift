//
//  ViewController.swift
//  Example
//
//  Created by 程庆春 on 2016/10/16.
//  Copyright © 2016年 qiuncheng.com. All rights reserved.
//

import UIKit
import FontAwesomeKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = UILabel()
        label.fa_text = .fa_android
        label.fa_font = UIFont(fa_fontSize: 100)
        label.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        self.view.addSubview(label)

        let button = UIButton(type: .custom)
        button.fa_setTitle(.fa_gift, for: .normal)
        button.fa_setTitle(.fa_anchor, for: .highlighted)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.frame = CGRect(x: 200, y: 200, width: 50, height: 50)
        button.titleLabel?.fa_font = UIFont(fa_fontSize: 50)
        self.view.addSubview(button)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

