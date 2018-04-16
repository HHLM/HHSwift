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
