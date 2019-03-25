//
//  ViewController.swift
//  Example
//
//  Created by 程庆春 on 2016/10/16.
//  Copyright © 2016年 qiuncheng.com. All rights reserved.
//

import UIKit
import FontAwesomeKit_Swift

class ViewController: UITableViewController {
    let types:[FontAwesomeType] = Types.types
    let identifier = "typeCellIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let leftItem = UIBarButtonItem(awesomeType: .windowClose, size: 24, style: .plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem = leftItem

        let rightItem = UIBarButtonItem(awesomeType: .bandAid, style: .plain, target: self, action: #selector(pushToFontAwesomeStoryboard))
        self.navigationItem.rightBarButtonItem = rightItem
        self.navigationItem.titleView = UIImageView(image: UIImage(awesomeType: .appleAlt, size: 10, textColor: UIColor.black))
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
    }
    override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
      let type = types[indexPath.row]
      (cell as? TypeCell)?.faType = type
    }
    @objc func pushToFontAwesomeStoryboard() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FontAwesomeStoryboard")
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


class TypeCell: UITableViewCell {

  var faType: FontAwesomeType = .plane {
    didSet {
      label0.fa.text = faType
      label0.fa.fontSize(35)
      label1.fa.text = faType
      label1.fa.fontSize(25)
      label25.fa.text = faType
      label25.fa.fontSize(15)
      label15.fa.text = faType
      label15.fa.fontSize(10)
      label2.fa.text = faType
      label2.fa.fontSize(60)
      if let name = String(reflecting: faType).split(separator: ".").last {
        label3.text = "." + name
      }
    }
  }

  @IBOutlet weak var label0: UILabel!
  @IBOutlet weak var label1: UILabel!
  @IBOutlet weak var label2: UILabel!
  @IBOutlet weak var label3: UILabel!
  @IBOutlet weak var label25: UILabel!
  @IBOutlet weak var label15: UILabel!
}

