//
//  cellModel.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class cellModel: NSObject {

    
    var icon: String = ""
    var title: String = ""

    var dataArray:(Array<Any>)  {
    
        
        var sectionData1 = [cellModel]()
        var sectionData2 = [cellModel]()
        var sectionData3 = [cellModel]()
        
        let m1  = cellModel()
        m1.icon = "preson_adviser_call"
        m1.title = "Push转场"
        sectionData1.append(m1)
        
        let m2  = cellModel()
        m2.icon = "history"
        m2.title = "UITableView"
        sectionData1.append(m2)
        
        let m3  = cellModel()
        m3.icon = "UICollectionView"
        m3.title = "UICollectionView"
        sectionData1.append(m3)
        
        let m4  = cellModel()
        m4.icon = "UIWebView"
        m4.title = "UIWebView"
        sectionData2.append(m4)
        
        let m5  = cellModel()
        m5.icon = "person_changePwd"
        m5.title = "UIScrollView"
        sectionData2.append(m5)
        
        let m6  = cellModel()
        m6.icon = "person_more"
        m6.title = "更多"
        sectionData3.append(m6)
        
        var array = Array<Any>()
        
        array.append(sectionData1)
        array.append(sectionData2)
        array.append(sectionData3)
        
        return array 
    }
    
    
    func dataArr()-> Array<Any>
    {
        
        var sectionData1 = [cellModel]()
        var sectionData2 = [cellModel]()
        var sectionData3 = [cellModel]()
        
        let m1  = cellModel()
        m1.icon = "preson_adviser_call"
        m1.title = "专属拿车顾问"
        sectionData1.append(m1)
        
        let m2  = cellModel()
        m2.icon = "history"
        m2.title = "我的支付历史"
        sectionData1.append(m2)
        
        let m3  = cellModel()
        m3.icon = "preson_wechat"
        m3.title = "绑定微信"
        sectionData1.append(m3)
        
        let m4  = cellModel()
        m4.icon = "person_changeInfo"
        m4.title = "修改资料"
        sectionData2.append(m4)
        
        let m5  = cellModel()
        m5.icon = "person_changePwd"
        m5.title = "修改账户密码"
        sectionData2.append(m5)


        let m6  = cellModel()
        m6.icon = "person_more"
        m6.title = "更多"
        sectionData3.append(m6)
        
        var array = Array<Any>()
        
        array.append(sectionData1)
        array.append(sectionData2)
        array.append(sectionData3)
        
        return array
        
    }

    
}
