//
//  ViewController.swift
//  Example
//
//  Created by 程庆春 on 2016/10/16.
//  Copyright © 2016年 qiuncheng.com. All rights reserved.
//

import UIKit
import FontAwesomeKit_Swift

class FontAwesomeExampleViewController: UICollectionViewController {
    
    let types: [FontAwesomeType] = Types.types

    override func viewDidLoad() {
        super.viewDidLoad()

        let leftItem = UIBarButtonItem(awesomeType: .windows, size: 24, style: .plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem = leftItem

        let rightItem = UIBarButtonItem(awesomeType: .android, style: .plain, target: self, action: nil)
        self.navigationItem.rightBarButtonItem = rightItem
        self.navigationItem.titleView = UIImageView(image: UIImage(awesomeType: .apple, size: 10, textColor: UIColor.black))
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return types.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FontAwesomeExampleCell", for: indexPath)
        (cell as? FontAwesomeExampleCell)?.type = types[indexPath.row]
        return cell
    }
}

