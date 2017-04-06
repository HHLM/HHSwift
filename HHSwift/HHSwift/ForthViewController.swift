//
//  ForthViewController.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class ForthViewController: HHBaseVC,UITableViewDelegate,UITableViewDataSource {

    
    var dataArray:Array<String> = []
    var dataArr:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.cyan
//        self.title = "第四页"
        config()
        self.navigationItem.title = "第四页"
        // Do any additional setup after loading the view.
        
        print(backWards(s1: "HHLM", s2: "HMM"))
        print(mySum(111,2222))
        view.addSubview(table)
    }
    func  config()  {
        let arr = ["转场动画","启动动画","加载动画","模态动画","Push动画","Aribnb动画","类似Twitter多张图"]
        dataArr += arr
    }

    
    fileprivate lazy var table:UITableView = {
        
        let tab = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kWidth, height: kHeight))
        tab.delegate = self
        tab.dataSource = self
        return tab
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil  {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = dataArr[indexPath.row]
        return cell!
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc =  HHTableAnimationVC()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
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
    
    
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        let vc =  HHTableAnimationVC()
//        vc.hidesBottomBarWhenPushed = true
//        navigationController?.pushViewController(vc, animated: true)
//    }
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
