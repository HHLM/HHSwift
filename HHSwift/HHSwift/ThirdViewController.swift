//
//  ThirdViewController.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.navigationItem.title = "第三页"
        // Do any additional setup after loading the view.
        view.addSubview(loginBtn)
        print("按钮的右侧按钮坐标：", kView_mx(view: loginBtn))
    }

    fileprivate lazy var loginBtn:UIButton = {
        
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.frame = CGRect.init(x: kWidth/2 - 100/2, y: 100, width: 100, height: 60)
        btn.addTarget(self, action: #selector(logout), for: UIControlEvents.touchUpInside)
        
        btn.setTitle("退出", for: .normal)
        btn.backgroundColor = .red
        return btn
    }()

    @objc func logout(btn:UIButton) {
        if (self.navigationController?.viewControllers.count)! > 1 {
            self.navigationController?.popViewController(animated: true)
        }else {
            self.navigationController?.dismiss(animated: true, completion: { 
                
            })
        }
    }

}
