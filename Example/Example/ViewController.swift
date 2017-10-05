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
    let names = Types.typeNames
    let identifier = "typeCellIdentifier"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let leftItem = UIBarButtonItem(awesomeType: .fa_windows, size: 24, style: .plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem = leftItem

        let rightItem = UIBarButtonItem(awesomeType: .fa_android, style: .plain, target: self, action: #selector(pushToFontAwesomeStoryboard))
        self.navigationItem.rightBarButtonItem = rightItem
        self.navigationItem.titleView = UIImageView(image: UIImage(awesomeType: .fa_apple, size: 10, textColor: UIColor.black))
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
        cell.textLabel?.fa_text = types[indexPath.row]
        cell.detailTextLabel?.text = names[indexPath.row]
    }
    func pushToFontAwesomeStoryboard() {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FontAwesomeStoryboard")
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

