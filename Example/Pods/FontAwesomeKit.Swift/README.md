FontAwesomeKit.Swift
========
😀😘A better choice for iOS Developer to use FontAwesome Icon with UI.😍     
[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://raw.githubusercontent.com/qiuncheng/FontAwesomeKit.Swift/master/LICENSE)
[![](https://img.shields.io/badge/Pod-v0.2.0-brightgreen.svg)](https://cocoapods.org/pods/FontAwesomeKit.Swift)
[![](https://img.shields.io/badge/support-iOS8-lightgrey.svg)](https://github.com/qiuncheng/FontAwesomeKit.Swift)
[![](https://img.shields.io/badge/platform-iOS-yellow.svg)](https://github.com/qiuncheng/FontAwesomeKit.Swift)
[![Wercker](https://img.shields.io/wercker/ci/wercker/docs.svg)](https://github.com/qiuncheng/FontAwesomeKit.Swift)
[![](https://img.shields.io/badge/Swift-3.0-yellowgreen.svg)](https://github.com/qiuncheng/FontAwesomeKit.Swift)

![FontAwesome.otf 4.6.3](https://raw.githubusercontent.com/qiuncheng/FontAwesomeKit.Swift/master/Screenshots/FontAwesomeKitExample.png)

Support
========
Swift 3.0 & iOS 8.0+   
FontAwesome 4.6.3  
Storyboard Now.

Installation
========
#### CocoaPods
1. add `pod 'FontAwesomeKit.Swift'` to your Podfile.
2. Run `pod install` OR `pod update`.
3. `import FontAwesomeKit_Swift`

#### Manually
1. [Download](https://github.com/qiuncheng/FontAwesomeKit.Swift/archive/master.zip) the full file.
2. Drag the FontAwesomeKit folder to your project.

Example
========

#### Use `FontAwesomeKit.Swift` in Storyboard. 
 1. Set Custom class to `FontAwesomeButton` or `FontAwesomeLabel`
 2. Set Awesome Unicode String in Attributes inspector  
 // All awesome unicode --> http://fontawesome.io/cheatsheet/


![FontAwesomeKit.Swift For Storyboard](https://raw.githubusercontent.com/qiuncheng/FontAwesomeKit.Swift/master/Screenshots/storyboard.jpg)

#### Use `FontAwesomeKit.Swift` with String.
```
let str1 = String.fontAwesome(undefined: 0xf107)
let str2 = String.fontAwesome(awesomeType: .fa_github)
let attrs = [NSFontAttributeName: UIFont(fa_fontSize: 32)]
let attrStr1 = NSAttributedString(string: str1)
let attrStr2 = NSAttributedString(string: str2)
```
The attrStr1 will get icon. ![](http://7xk67j.com1.z0.glb.clouddn.com/gift.png)
The attrStr2 will get icon.![](http://7xk67j.com1.z0.glb.clouddn.com/github.png)
#### Use `FontAwesomeKit.Swift` with UILabel.
```
let label = UILabel()
label.fa_text = .fa_apple
label.fa_font = UIFont(fa_fontSize: 100)
/// fa_text : FontAwesomeType.
/// fa_font : set the font size.
```
#### Use `FontAwesomeKit.Swift` with UIButton.
```
let button = UIButton(type: .custom)
button.fa_setTitle(.fa_gift, for: .normal)
/// type : The fontAwesome type, and you don’t need to ‘setImage’ or ‘setBackgroundImage’
/// state : The state that uses the specified title. The possible values are described in UIControlState.
button.titleLabel?.fa_font = UIFont(fa_fontSize: 50)
```
#### Use `FontAwesomeKit.Swift` with UIImage.
```
let image1 = UIImage(awesomeType: .fa_github)
/// fontSize : The fontSize you can give, default is 80.
/// tintColor : The UIImage filled color you get, default is UIColor.lightGray.
let image2 = UIImage(awesomeType: .fa_github, size: 30.0, color: UIColor.black)
```
#### Use `FontAwesomeKit.Swift` with UINavigationBarItem.
```
let rightItem = UIBarButtonItem(awesomeType: .fa_github, style: .plain, target: nil, action: nil)
let leftItem = UIBarButtonItem(awesomeType: .fa_github, size: 24, style: .plain, target: nil, action: nil)
/// fontSize : The font size, default is ‘24.0’
/// awesomeType : FontAwsomeType
```

LICENCE
========
Under [MIT License](https://github.com/qiuncheng/FontAwesomeKit.Swift/blob/master/LICENSE)

Copyright (c) 2016 [QiunCheng](http://qiuncheng.com). All rights reserved.

Thanks
========
1. [The FontAwesome Unicode list.](http://fontawesome.io/cheatsheet/) From fontawesome.io
2. [The Lastest(version4.6.3) FontAwesome.otf bundle](http://fontawesome.io/assets/font-awesome-4.6.3.zip)

About me
========
A student in Xidian university.  
Looking for a iOS job now, glad to every oppotunity. If you can offer me, [contact me anytime!](mailto:qiuncheng@gmail.com)  
If you have a new idea about this project, [contact me anytime!](mailto:qiuncheng@gmail.com) OR pull request.
