//
//  HHBaseVC.swift
//  HHSwift
//
//  Created by LXH on 2017/3/28.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHBaseVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navBgImage = UIImage.imageWithColor(color: UIColor.cyan, size: CGSize.init(width: kWidth, height: 64))
//        let  navBgImage1 = navBgImage?.tintedImage(color: UIColor.green, rect: CGRect.init(x: 0, y: 16, width: kWidth, height: 32), alpha: 0.5)
        
        navigationController?.navigationBar.setBackgroundImage(navBgImage, for: UIBarMetrics.default)
        
        //这句代码是去掉导航条的那根黑线
        navigationController?.navigationBar.shadowImage = UIImage()
        
        view.backgroundColor = UIColor.cyan
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = NSStringFromClass(type(of: self)).components(separatedBy: ".").last!
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
