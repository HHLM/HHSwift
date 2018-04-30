//
//  HHBaseMode.swift
//  HHSwift
//
//  Created by Mac on 2018/4/16.
//  Copyright © 2018年 HHLM. All rights reserved.
//

import UIKit

class HHBaseMode: NSObject {
    /*
     构造函数 和 OC的正好相反： OC 是先调动super.init 再给属性赋值
     Swift 是先赋值 再调用super.init
     NSObject 没有属性 只有一个成员变量'isa'
     */
    var name : String
    var data : String
    
    
    /*!  Swift命名空间 - 就是项目名称
     默认 所有类都是共享的，可以直接访问 不需要import
     所有对象的属性是var 也可以直接访问
     */
    //给自己的属性分配空间并且设置初始值
    //调用父类的构造函数 给父类属性分配空间设置初始值
    //NSObject 没有属性 只有isa
    
    //Stored property 'name' without initial value prevents synthesized initializers
    
    //Property 'self.name' not initialized at implicitly generated super.init call
    override init() {
        
        ///Property 'self.name' not initialized at super.init call\
        //提示给self.name 初始化 -> 分配空间，设置初始值
        
        name = ""
        data = ""
        
        super.init()
    }
}
