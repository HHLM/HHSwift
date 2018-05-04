//
//  Bundel+EXT.swift
//  HHSwift
//
//  Created by Mac on 2018/5/3.
//  Copyright © 2018年 HHLM. All rights reserved.
//

import Foundation

extension Bundle {
    
    
    //返回命名空间字符串
    func nameSpace() -> String {
        
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    //计算型属性类似于函数 ，没有参数，有返回值
    var namespace:String  {
         return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
    
}
