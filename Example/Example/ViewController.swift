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
        label.fa_text = .fa_apple
        label.fa_font = UIFont(fa_fontSize: 100)
        label.frame = CGRect(x: 150, y: 100, width: 100, height: 100)
        self.view.addSubview(label)

        let labelDetail = UILabel(frame: CGRect(x: 150, y: 200, width: 100, height: 30))
        labelDetail.font = UIFont.systemFont(ofSize: 10)
        labelDetail.text = "Above is a UILabel."
        self.view.addSubview(labelDetail)


        let button = UIButton(type: .custom)
        button.fa_setTitle(.fa_gift, for: .normal)
        button.fa_setTitle(.fa_anchor, for: .highlighted)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.frame = CGRect(x: 150, y: 300, width: 50, height: 50)
        button.titleLabel?.fa_font = UIFont(fa_fontSize: 50)
        self.view.addSubview(button)

        let buttonDetail = UILabel(frame: CGRect(x: 130, y: 350, width: 100, height: 30))
        buttonDetail.font = UIFont.systemFont(ofSize: 10)
        buttonDetail.text = "Above is a UIButton."
        self.view.addSubview(buttonDetail)

        let leftItem = UIBarButtonItem(awesomeType: .fa_adjust, size: 24, style: .plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem = leftItem

        let rightItem = UIBarButtonItem(awesomeType: .fa_battery_half, style: .plain, target: nil, action: nil)
        self.navigationItem.rightBarButtonItem = rightItem
        self.navigationItem.titleView = UIImageView(image: UIImage(awesomeType: .fa_apple, size: 10, color: UIColor.green))

        for i in 0 ..< 5 {
            let imageView = UIImageView(frame: CGRect(x: 30.0 * CGFloat(i + 4), y: 400, width: 30.0, height: 30.0))
            imageView.image = UIImage(awesomeType: .fa_star, size: 30, color: UIColor.orange)
            self.view.addSubview(imageView)
        }

        let imageViewDetail = UILabel(frame: CGRect(x: 130, y: 430, width: 120, height: 30))
        imageViewDetail.font = UIFont.systemFont(ofSize: 10)
        imageViewDetail.text = "Above is UIImageView."
        self.view.addSubview(imageViewDetail)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

