//
//  HHDemo.swift
//  HHSwift
//
//  Created by LXH on 2017/11/3.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit


class HHDemo: HHBaseVC {
    
    // MARK: - 添加标记1
    
    // FIXME: 添加标记2
    
    /* FIXME: 添加标记3
     */
    
    // TODO: 添加标记4
    
    /* TODO: 添加标记5
     */
    
    override func viewDidLoad() {
    
        view.backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
      /**
         1、条件不需要（）
         2、语句必须有{}
        */
        dome1(x: 10, y: nil)
        
        //数组
        hh_array()
        print (hh_arrayADD())
        //字典
        hh_dictionary()
        
    }
    func demo() {
    // () 标识空执行
        let a = 10
         a > 5 ? print("5"):print("sss")
        a > 8 ? print("s"):()
    }
    //MARK: ?? 类似于三木运算符
    func dome1(x:Int?,y:Int? ) {
        ///强行解包有风险
        //1、强行解包
//        print(x! + y!)
        /*
         2、if解包
         */
        if x != nil && y != nil {
            print(x! + y!)
        }
        
        print((x ?? 0) + (y ?? 0))
        
        //MARK: if let/var 连用语法
        //判断对象的值是不是nil
        //进入分支后 一定有值 不需要解包
        let oName :String? = "LXH"
        let oAge :Int? = 10
        if let  name = oName ,
           let age = oAge {
            print(name + String(age))
        }
        
        //MARK: // guard let 如果没有值 直接返回
        guard let name = oName,
            let age = oAge else {
            //没有值才会进入这里面
            return;
        }
        print(name + String(age))
        //MARK: - guard 守卫/守护
        // guard let 和 if let 正好相反
        dome2(name: oName, age: age)
        dome3(name: oName, age: age)
      
    }
    
    func demo1 (name: String?,age: Int?) {
    
        if name != nil && age != nil {
            print(name! + String(age!))
        }
        // 或者
        
        print((name ?? "") + String((age ?? 0)))
    }
    
    func dome2(name: String?, age: Int?) {
        
    //MARK: 所name不是nil age 不是nil 就走{} 中的代码
        if let name = name,let age = age {
            print(name + String(age))
        }
        
    }
    
   func dome3(name: String?, age: Int?) {
    
    //MARK: 若name 或者 age是nil 就返回 不走下面的代码
        guard let name = name,
              let age = age else {
        return
        }
        print(name + String(age))
    }
    // MARK: -- 字符串子串
    
    func hh_string() {
        let name: String = "HH"
        let love: String = "love"
        let person: String = "MIN"
        print(name + love + person)
        
        let a = love.substring(from: love.startIndex)
        let b = love.substring(from: "v".startIndex)
        print(a + b)
    }
    
    // MARK:- 集合
    func hh_array() -> () {
        let p = CGPoint(x: 0, y: 0)
        let array = ["hh","love","min",p,1] as [Any]
        print(array)
        
        for i in 0 ..< array.count {
            print(array[i])
        }
        
        for obj in array {
            print(obj)
        }
        //类似于OC中的block遍历
        for e in array.enumerated() {
            print("\(e.offset) \(e.element)")
        }
        
        for (n,s) in array.enumerated() {
            print("\(n)\(s)")
        }
        //反序遍历
        for ss in array.reversed() {
            print("反序便利\(ss)")
        }
        //这是个是正确的
        for ss in array.enumerated().reversed() {
            print("反序便利\(ss.element) \(ss.offset)")
        }
    }
    
    
    func hh_arrayADD() -> Array<Any> {
        var array = ["HH","Love","Min"]
        array.append("A")
        array.append("B")
        array.insert("WO", at: 0)
        array[5] = "YOU"
        print(array)
        array.remove(at: 4)
        print(array)
        hh_arrayCapacity()
        return array
    }
    //初始容量空间 是目的 为了避免重复分配空间
    func hh_arrayCapacity() -> () {
        var array = [Int]()
        for _ in 0 ..< 9 {
            array.append(1)
            print("\(array.capacity)")
        }
    }
    
    func hh_dictionary() -> () {
        var dict = ["ss":"JJJ"]
        // 添加修改
        dict.updateValue("K", forKey: "k")
        dict.updateValue("A", forKey: "k")
        dict["B"] = "BBC"
        //删除 key 必须是可以哈希的 hash 就是将字符串变成唯一的'整数' 便于查找
        dict.removeValue(forKey: "ss")
        let arrayDict:[[String : AnyObject]] = [
            ["A":"a" as AnyObject,"age":7 as AnyObject],["B":"b" as AnyObject,"age":5 as AnyObject]
        ]
        
        print("\(dict)  \(arrayDict)")
        
        for (k,v) in dict {
            print(k + v)
        }
        
        for e in dict {
            print("\(e.key)----\(e.value)")
        }
        for e in dict.enumerated() {
            print("\(e.element.key)+++\(e.element.value)--\(e.offset)")
        }
        
        var dict1 = ["hh":"HHLM"];
        //合并字典
        for e in dict1 {
            dict[e.key] = dict1[e.key]
        }
        print(dict)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
     let v = HHUIDemoVC()
        navigationController?.pushViewController(v, animated: true)
    }
    
}
