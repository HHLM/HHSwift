//
//  HHTool.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

import Foundation

// MARK: - 尺寸大小

public let kWidth = UIScreen.main.bounds.size.width

public let kHeight = UIScreen.main.bounds.size.height

public func kView_with(view:UIView) -> CGFloat {
    return view.frame.size.width
}


public func kView_heigth(view:UIView) -> CGFloat {
    return view.frame.size.height
}

public func kView_mx(view:UIView) -> CGFloat {
    return view.frame.maxX
}

public func kView_my(view:UIView) -> CGFloat {
    return view.frame.size.height + view.frame.origin.y
}

public func HHClassFromString(_ className:String) -> Swift.AnyClass? {

    let bundleName = Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
    return NSClassFromString("\(bundleName).\(className)")
}

// MARK: - 打印信息
public func DLog<T>(_ message:T,fileName:String = #file,method:String = #function,line:Int = #line) {

    #if DEBUG
    let str = (fileName as NSString).pathComponents.last!.replacingOccurrences(of: ".swift", with: "")
    print("\(str) ->: \(method) ->: \(line)行 ->:\n \(message)")
    #else
        let array = fileName.components(separatedBy: "/")
        print(array.last ?? "")
        
    #endif
}

// MARK: - 颜色
/**
 颜色
 
 - author: 1606
 - date: 17-03-21 14:03:36
 
 - parameter r: red
 - parameter g: green
 - parameter b: blue
 - parameter a: alpha
 
m/tyu890-= - returns: 返回RGB颜色
 */
 func kRGB(r:CGFloat,g:CGFloat,b:CGFloat,a:CGFloat) -> UIColor {
    
    return UIColor.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}

// MARK: -随机颜色
func kColorRandom() ->UIColor {
    
    return kRGB(r: CGFloat(arc4random()%255), g: CGFloat(arc4random()%255), b: CGFloat(arc4random()%255), a: 1)
}


// MARK: -路径
/**
 - author: 1606
 - date: 17-03-21 14:03:31
 - returns: 沙盒路径
 */
func kAppPath() -> String! {
    return NSHomeDirectory()
}

// MARK: - AlertView

func showAlert(title:String, vc:UIViewController) {
    
    let alert = UIAlertController.init(title: "温馨提示", message: title, preferredStyle: .alert)
    let cancel = UIAlertAction.init(title: "知道", style: .cancel, handler: nil)
    let sure = UIAlertAction.init(title: "确定", style: .destructive, handler:
    { action in
        
        print("点击的确定")
        
    })
    alert.addAction(cancel)
    alert.addAction(sure)
    vc.present(alert,animated: true)
    alert.show(vc, sender: 100)
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
    
}
