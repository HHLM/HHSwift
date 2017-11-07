//
//  HHUIDemoVC.swift
//  HHSwift
//
//  Created by LXH on 2017/11/4.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHUIDemoVC: HHBaseVC,UITableViewDelegate,UITableViewDataSource {
    
    
    //MARK: -- 懒加载UITableView
    
    fileprivate lazy  var tab:UITableView = {
        let t = UITableView(frame: self.view.bounds, style: .plain)
        t.delegate = self
        t.dataSource = self
        t.tableFooterView = UIView()
        return t
    }()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell  = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text =  "HHLM\(indexPath.row)"
        return cell!
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        print(indexPath.row)
    }
    
    //TODO: Swift中的闭包 相当于OC的block 但是比block 用的更广泛
    
    /**
        闭包
        1、提前准备好的代码
        2、在需要的时候执行
     */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tab)
//        print(tab.visibleCells)

        hh_block()
        hh_GCD()
    }
    
    func sum(x: Int, y: Int) -> Int {
        
        return x + y
    }
    
    func hh_block()  {
        
        print(sum(x: 1, y: 20))
        let f = sum
        
        //MARK: 最简单的闭包
        let b1 = {
            print(f(1,2))
        }
        print(f(20,22))
        b1()
        
        //MARK: 带参数的闭包
        /**
         闭包中、参数，返回值，实现代码都是在{}中
         {形参列表 -> 返回值类型 in  //实现代码 }
         */
        let b2 = {(x: Int ,y: Int) -> Int in
            return x + y
        }
        print( "闭包b2--:\(b2(10,30))")
        
        loadData { (result) in
            print(result)
        }
        let ss =  hh_loadData { (name) in
            print(name)
        }
        print(ss)
    }
    
    func hh_GCD() -> () {
        /**
            1、将任务添加到队列，置顶执行任务的函数
            2、闭包的场景和blcok完全一致
         */
        DispatchQueue.global().async {
            print("耗时操作\(Thread.current)")
            Thread.sleep(forTimeInterval: 1.0) //休眠一秒
//            let json = ["太极","武当","少林"]
            DispatchQueue.main.async(execute: {
                print("主线程操作\(Thread.current)")
            })
        }
    }

    func loadData(complate: @escaping (_ result: [String]) ->()) -> () {
        DispatchQueue.global().async {
            print("耗时操作\(Thread.current)")
            Thread.sleep(forTimeInterval: 1.0) //休眠一秒
            let json = ["太极","武当","少林"]
            DispatchQueue.main.async(execute: {
                print("主线程操作\(Thread.current)")
                complate(json)
            })
        }
       
        
    }
 
    //闭包获取数据
    func hh_loadData(finished: ( _ name : String) -> ()) -> String {
        finished("回调的数据")
       
        return "我返回数据了..."
    }
    
   
    func hh_func(name:String) -> () {
        
    }
    
    func hh_func2(finished: @escaping (_ name : String) -> ()) -> () {
        let sum = hh_func
        
    }
   
    

}
