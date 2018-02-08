//
//  HHPerson.swift
//  HH-01
//
//  Created by LXH on 2017/11/15.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHPerson: NSObject {

    /*!  Swift命名空间 - 就是项目名称
        默认 所有类都是共享的，可以直接访问 不需要import
        所有对象的属性是var 也可以直接访问
     */
    //给自己的属性分配空间并且设置初始值
    //调用父类的构造函数 给父类属性分配空间设置初始值
    //NSObject 没有属性 只有isa
    var name : String
    override init() {
        name = "HHLM"
        super.init()
    }
}
