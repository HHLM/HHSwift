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
    
    init(dict:[String:String]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override var description: String {
        let keys = ["name","age"]
        return dictionaryWithValues(forKeys: keys).description
    }
}
