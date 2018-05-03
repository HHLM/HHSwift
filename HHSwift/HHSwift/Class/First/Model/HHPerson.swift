//
//  HHPerson.swift
//  HHSwift
//
//  Created by LXH on 2017/3/22.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHPerson: NSObject {

    var name:String?
    var age :Int = 0
    
    
    /*
      1、 遍历构造函数 允许返回nil
        - 正常的构造函数一定会创建对象
        - 判断给定的参数是否符合条件，如果不符合条件，直接返回nil，不会创建对象，减少内存开销
     2、**只有** 遍历够着函数中使用 ‘self.init’ 构造当前对象
        - 没有convenience 关键字的构造函数是负责创建对象的，反之用来检查条件的，本身不负责对象的创建
     3、如果遍历构造函数中使用，当前对象的属性
     
     */
    
    init(dict:[String:String]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    
    
    override var description: String {
        let keys = ["name","age"]
        return dictionaryWithValues(forKeys: keys).description
    }
    
    
    
    
    class func propertyList()->() {
        
        var count:UInt32 = 0
        //1、获取类的属性列表，返回属性列表的数组，（可选项）
        let list =  class_copyPropertyList(self, &count)
        
        DLog("属性的数量\(count)")
        
         print(list as Any)
        
        //2、遍历数组
        for i in 0..<Int(count) {
           
            //3、根据下表获取属性 objec_property
            let pty = list?[i]
            
            //4、获取‘属性’的名称  C语言的字符串
            // Int8 -> Byte -> Char => C语言的字符串
            let cName = property_getName(pty!)
            
            //5、转成String字符串
            
            let name = String(utf8String: cName!)
            
            DLog(name ?? "我是假的")
        }
    }

    func loadData (finish:() -> ()){
        finish()
    }
    
    //析构函数
    deinit {
        
    }

}


