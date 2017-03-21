//
//  HHTool.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

import Foundation


let kWid = UIScreen.main.bounds.size.width

let kHeigh = UIScreen.main.bounds.size.height

/**
 颜色
 
 - author: 1606
 - date: 17-03-21 14:03:36
 
 - parameter r: <#r description#>
 - parameter g: <#g description#>
 - parameter b: <#b description#>
 - parameter a: <#a description#>
 
 - returns: 返回RGB颜色
 */
func kRGB(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat) -> UIColor {
    
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

/**
 - author: 1606
 - date: 17-03-21 14:03:31
 
 - returns: 沙盒路径
 */
func kAppPath() -> String! {
    return NSHomeDirectory()
}

/**

 - author: 1606
 - date: 17-03-21 14:03:18
 
 - returns: Documents 路径
 */
func kBundleDocumentPath() -> String! {
    return NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first
}

/**
 - author: 1606
 - date: 17-03-21 14:03:12
 
 - returns: caches 路径
 */
func kCachesPath() -> String! {
    return NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first
}

class HHTool: NSObject {

    let kWidth = UIScreen.main.bounds.size.width
    let kHeight = UIScreen.main.bounds.size.height
    
}
