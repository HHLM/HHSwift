//
//  HHTTPRequest.swift
//  HHSwift
//
//  Created by LXH on 2017/4/11.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHTTPRequest: NSObject {
    
    
    func HHRequestTest(){
        
        let manger = AFHTTPSessionManager()
        manger.responseSerializer.acceptableContentTypes =
            ["application/json",
             "text/json",
             "text/javascript",
             "text/plan",
             "text/html",
             "image/jpeg"]
        let url =  "http://api1.zhengw.cn?Params=BB41A068BDB82ECD1E166D701EF4845C2EB4778C0B9FA3BE1CC3EDCA76A529F4A2C91D9D0B8844D430179D9B7FFB1A2798D8D7FADA7E50757FC38ADB4BA25DC6173F952F80A97D1B68D71F7A3674810AD427F45DF5DF1CDECDF0684F4816F3029EA4714A2C63EA4BBD6EEE0067033E0F86569B00FB41B6800432E9238EA7B7EA4A3D9DF4814CCE82BCA27B1246F2BE1274B1F7CA758B8F638A8BD365E8E1DCDB&Sign=88F91596B9A541579B078D0305F34933&Method=get.news.homelist"
       
        manger.get(url, parameters: nil, progress: { (progress:Progress?) in
            
            DLog(progress!.localizedDescription!)
            
        }, success: { (task:URLSessionDataTask,objc: Any?)  in
            
            DLog(objc ?? [""] , fileName: "-----")
            
        }) { (task:URLSessionDataTask?, Error) in
            DLog( Error)
        }
    
    }
}


