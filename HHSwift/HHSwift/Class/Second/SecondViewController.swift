//
//  SecondViewController.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        
        self.view.backgroundColor = .green
        self.navigationItem.title = "第二页"
        self.view.addSubview(self.loginBtn)
        let navBgImage = UIImage.imageWithColor(color: UIColor.blue, size: CGSize.init(width: kWidth, height: 64))
        navigationController?.navigationBar.setBackgroundImage(navBgImage, for: UIBarMetrics.default)
    }

    fileprivate lazy var loginBtn:UIButton = {
    
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.frame = CGRect.init(x: kWidth/2 - 100/2, y: 100, width: 100, height: 60)
        btn.addTarget(self, action: #selector(login), for: UIControlEvents.touchUpInside)
        
        btn.setTitle("登陆", for: .normal)
        btn.backgroundColor = .red
        return btn
    }()
    
    @objc func login(btn:UIButton) {
        let third = ThirdViewController()
        
        if (self.navigationController?.viewControllers.count)! > 1 {
            self.navigationController?.pushViewController(third, animated: true)
        }else{
            let nav = UINavigationController.init(rootViewController: third)
            self.navigationController?.present(nav, animated: true, completion: { 
                
            })
        }
        
//        third.hidesBottomBarWhenPushed = true
        
    }
}
