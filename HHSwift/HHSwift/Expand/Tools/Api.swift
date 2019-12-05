//
//  Api.swift
//  RongYiSuan
//
//  Created by mac on 2019/11/28.
//  Copyright © 2019 rsy. All rights reserved.
//

import UIKit

class Api: NSObject {
    
    var base = "http://test-sap.rys.cn"
    var hometaskList = "/bills/api/alRegisterCompanyProcess/getTaskCountList"

    init(dict:[String:String]) {
        super.init()
        setValuesForKeys(dict)
        base = base + hometaskList
    }
       
       
       
    override var description: String {
        let keys = ["name","age"]
        return dictionaryWithValues(forKeys: keys).description
    }

}
