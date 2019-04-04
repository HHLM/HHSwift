//
//  FirstViewController.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

extension UserDefaults {
    enum HHData:String,UserDefaultSettable {
        case name,url,bool,int,float,double
    }
}

class FirstViewController: HHBaseVC,UITableViewDelegate,UITableViewDataSource,UIScrollViewDelegate{

    
    let model = cellModel()
    
    var array :Array<Any>  {
    
        let  arr = model.dataArray
    
        UserDefaults.HHData.name.store(value: "HHLM")
        
        print(UserDefaults.HHData.name.storeString ?? "")
        
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
        let myTable = UITableView(frame: CGRect(x: 0, y: 0, width: kWidth, height: kHeight))
        myTable.delegate = self
        myTable.dataSource = self
        return myTable
    }()
    
    
    
   

    
    
    
    
    private var name:String {
    
        return "HHLM"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let array = [1,2,3]
        var array1  = array
        print(address:  array)
        print(address:  array1)
        array1.append(4)
        print(address:  array)
        print(address:  array1)
        array1.append(5)
        array1.append(5)
        print(address:  array1)
        array1.append(5)
        print(address:  array1)
        array1.append(5)
        print(address:  array1)
        
        let wordsworth = """
                        I wandered lonely as a cloud
                        that floats on high
                        o'er vales and hills
                        """
        
        print(wordsworth)
        
        
        let name = "ssss"
        
        print("name长度：\(name.length())")
        
        print(Bundle.init().infoDictionary ?? "")
        let p = HHBaseMode()
        print(p.title)
        
        HHPerson.propertyList()
        
        view.backgroundColor = .red
        navigationItem.title = "第一页"
        //大标题栏目
//        navigationController?.navigationBar.prefersLargeTitles = false
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = false
        } else {
            // Fallback on earlier versions
        }
        view.addSubview(self.table)
        print("nmae" + name)
        HHTTPRequest().HHRequestTest()
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
        cell.selectionStyle = .none
        let modes = array[indexPath.section] as! [cellModel]
        let cmodel = modes[indexPath.row]
        cell.textLabel?.text = cmodel.title
        
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let vc = HHDemo()
//        
//        vc.hidesBottomBarWhenPushed = true
//        navigationController?.pushViewController(vc, animated: true)
//        return
        if indexPath.row % 2 == 0 {
            let sec = SecondViewController()
            sec.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(sec, animated: true)
        }else{
            let vc = HHTableAnimationVC()
            vc.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(vc, animated: true)
            
        }
        
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        let originY = (scrollView.contentOffset.y - 64)/64.0
        DLog(originY)
        let navBgImage = UIImage.imageWithColor(color: UIColor.white, size: CGSize.init(width: kWidth, height: 64))
        let  navBgImage1 = navBgImage?.tintedImage(color: UIColor.green, rect: CGRect.init(x: 0, y: 0, width: kWidth, height: 64), alpha: originY)
        navigationController?.navigationBar.setBackgroundImage(navBgImage1, for: UIBarMetrics.default)
        
    }
    func order(array:[Int]) {
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        let navBgImage = UIImage.imageWithColor(color: UIColor.white, size: CGSize.init(width: kWidth, height: 64))
        let  navBgImage1 = navBgImage?.tintedImage(color: UIColor.red, rect: CGRect.init(x: 0, y: 0, width: kWidth, height: 64), alpha: 1)
        navigationController?.navigationBar.setBackgroundImage(navBgImage1, for: UIBarMetrics.default)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let navBgImage = UIImage.imageWithColor(color: UIColor.white, size: CGSize.init(width: kWidth, height: 64))
        let  navBgImage1 = navBgImage?.tintedImage(color: UIColor.green, rect: CGRect.init(x: 0, y: 0, width: kWidth, height: 64), alpha: 0)
        navigationController?.navigationBar.setBackgroundImage(navBgImage1, for: UIBarMetrics.default)
    }

}
