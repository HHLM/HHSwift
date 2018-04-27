//
//  HHUIDemoVC.swift
//  HHSwift
//
//  Created by LXH on 2017/11/4.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHUIDemoVC: HHBaseVC,UITableViewDelegate,UITableViewDataSource {
    
    //定义一个闭包
    var hh_finishedCallback: ((_ name: String) -> ())?
    
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
        let a = HHAddDemoVC()
        navigationController?.pushViewController(a, animated: true)
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
            DispatchQueue.main.async {
                print("主线程操作\(Thread.current)")
            }
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
        //若函数的
        //尾随闭包
        hh_loadData(finished: {(name)->() in
            
        })
       
        //这是尾随闭包 省去了（）
        hh_loadData { (name) in
            
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
        _ = hh_func
        
        //闭包中和self中相互引用 就造成循环引用
        //Swift中解决闭包循环引用的三种方法
        //MARK: 1、类似于OC中的 __weak
        weak var weakself = self
        hh_circlyLoad {
            print(weakself?.view as Any)
        }
        
        // MARK: 2、推荐使用这种 和OC中的__weak typeof(self) 作用类似 对象被回收时 指针会自动指向nil
        hh_circlyLoad { [weak self] in
            print(self?.view as Any)
        }
        // MARK: 3、会造成野指针 类似于OC中的__unsafe__retained 对象被收回 指针不会指向nil
        hh_circlyLoad { [unowned self] in
            print(self.view)
        }
    }
    //MARK: -- 循环引用
    
    func hh_circlyLoad(complate: ()->()) -> () {
        DispatchQueue.global().async {
            DispatchQueue.main.async(execute: {
                
            })
        }
    }
    
    
    deinit {
        //类似于OC的dealloc
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let a = HHAddDemoVC()
        navigationController?.pushViewController(a, animated: true)
    }

}
