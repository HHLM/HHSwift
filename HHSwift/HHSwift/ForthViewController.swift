//
//  ForthViewController.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
//        self.title = "第四页"
        self.navigationItem.title = "第四页"
        // Do any additional setup after loading the view.
        
        print(backWards(s1: "HHLM", s2: "HMM"))
        print(mySum(111,2222))
    }

   
    func loadData(finished: (_ html:String) -> ()) {
    
        
    }
    

    /**
     *  @author 1606, 17-03-21 18:03:00
     *
     *  闭包形式
     
     { (parameters) -> returnType in
     statements
     }
     
     闭包 = {(行参) -> 返回值 in // 代码实现 }
     in 用于区分函数定义和代码实现
     
     */
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc =  HHTableAnimationVC()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
    var userName1 = ["HH","KK","LM"]
    
    func backWards(s1:String,s2:String) ->Bool {
        return s1 > s2
    }
    
    func sum( num1:Int,num2:Int) -> Int {
        return num1 + num2
    }
    
    let mySum = { (a:Int,b:Int) -> Int in
        return a + b
    }
    
    let sum = {
        print("最简单的闭包")
    }
}
