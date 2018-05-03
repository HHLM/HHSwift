//
//  UILable+EXT.swift
//  HHSwift
//
//  Created by Mac on 2018/5/2.
//  Copyright © 2018年 HHLM. All rights reserved.
//

import UIKit

extension UILabel {
    
    //构造函数
    convenience init(title:String , font: UIFont ,color:UIColor , textColor: UIColor) {
        
        self.init()
        self.text = title
        self.font = font
        self.backgroundColor = color
        self.textColor = textColor
        
    }
    
    //重写 、重载
    
}
