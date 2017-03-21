//
//  FirstViewController.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let model = cellModel()
    var array :Array<Any>  {
    
      let  arr = model.dataArr()
        return arr
    }
    
    /*
     5种修饰符访问权限排序
     
     1，private
     private访问级别所修饰的属性或者方法只能在当前类里访问。
     
     2，fileprivate
     fileprivate访问级别所修饰的属性或者方法在当前的Swift源文件里可以访问。
     
     3，internal 默认的 可写 可不写
     internal访问级别所修饰的属性或方法在源代码所在的整个模块都可以访问。
     如果是框架或者库代码，则在整个框架内部都可以访问，框架由外部代码所引用时，则不可以访问。
     如果是App代码，也是在整个App代码，也是在整个App内部可以访问。
     
     4，public
     可以被任何人访问。但其他module中不可以被override和继承，而在module内可以被override和继承。
     
     5，open
     可以被任何人使用，包括override和继承。
     
     从高到低排序如下：
     open > public > interal > fileprivate > private

     */
    

    /// 懒加载创建一个UITableView
    /// fileprivate 代表文件内私有
    
    /// 懒加载的格式  lazy var 变量: 类型 = { 创建变量代码 }()
    /// 懒加载的写法本质上是定义并执行一个闭包
    
    fileprivate lazy var table:UITableView  = {
        let myTable = UITableView(frame: CGRect(x: 0, y: 0, width: HHTool().kWidth, height: HHTool().kHeight))
        myTable.delegate = self
        myTable.dataSource = self
        return myTable
    }()
    
    private var name:String {
    
        return "HHLM"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.view.backgroundColor = .red
        self.navigationItem.title = "第一页"

        self.view.addSubview(self.table)
        print("nmae" + name)
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return array.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let daArray = array[section]
        return (daArray as AnyObject).count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        let modes:Array<cellModel> = array[indexPath.section] as! Array<cellModel>
        let cmodel = modes[indexPath.row]
        cell.textLabel?.text = cmodel.title
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let sec = SecondViewController()
        sec.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(sec, animated: true)
    }
    

}
