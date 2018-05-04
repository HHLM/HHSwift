//
//  HHBaseVC.swift
//  HHSwift
//
//  Created by LXH on 2017/3/28.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHBaseVC: UIViewController {

    
    override func viewWillAppear(_ animated: Bool) {
        let navBgImage = UIImage.imageWithColor(color: UIColor.white, size: CGSize.init(width: kWidth, height: 64))
        let  navBgImage1 = navBgImage?.tintedImage(color: UIColor.red, rect: CGRect.init(x: 0, y: 0, width: kWidth, height: 64), alpha: 0)
        navigationController?.navigationBar.setBackgroundImage(navBgImage1, for: UIBarMetrics.default)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        
        let navBgImage = UIImage.imageWithColor(color: UIColor.purple, size: CGSize.init(width: kWidth, height: 64))
        
        let  navBgImage1 = navBgImage?.tintedImage(color: UIColor.purple, rect: CGRect.init(x: 0, y: 16, width: kWidth, height: 32), alpha: 0.5)
        navigationController?.navigationBar.setBackgroundImage(navBgImage1, for: UIBarMetrics.default)
        
        view.backgroundColor = UIColor.cyan
        
        hh_hiddenNavBarBottomLine()
        
        print( NSStringFromClass(type(of: self)).components(separatedBy: "."))
    }
    
    /// 隐藏导航那根线
    func hh_hiddenNavBarBottomLine() {
        //这句代码是去掉导航条的那根黑线
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    


}
