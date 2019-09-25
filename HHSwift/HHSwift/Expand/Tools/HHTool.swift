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

public let kWidth:CGFloat = UIScreen.main.bounds.size.width

public let kHeight:CGFloat = UIScreen.main.bounds.size.height

public let kStatusHeight:CGFloat = UIApplication.shared.statusBarFrame.size.height

public let kNavBarHeight:CGFloat =  (kStatusHeight > 20) ? 88.0 : 64.0

public let kSafeBottomBar:CGFloat = (kStatusHeight > 20) ? 34.0 : 0

public let kTabBarHeight:CGFloat = (kStatusHeight > 20) ? 83.0 : 49.0

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
//FIXME:修改我
//TODO:单调
public func DLog<T>(_ message:T,fileName:String = #file,method:String = #function,line:Int = #line) {

    #if DEBUG
    let str = (fileName as NSString).pathComponents.last!.replacingOccurrences(of: ".swift", with: "")
    print("\(str) ->: \(method) ->: \(line)行 ->:\n \(message)")
    #else
        let array = fileName.components(separatedBy: "/")
        print(array.last ?? "")
        
    #endif
}

public func print(address o: UnsafeRawPointer ) {
    print(String(format: "%p", Int(bitPattern: o)))
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

func kRedColo() -> UIColor {
    return #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
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

/**
 创建文件
 - author: 1606
 - date: 17-05-16 11:05:00
 - parameter filePath: 文件地址
 - parameter fileType: 文件类型
 */
func kCreatfile(filePath:String,fileType:String) {
    
    let plistPath = filePath + fileType;
    let fileManager = FileManager()
    fileManager.createFile(atPath: plistPath, contents: nil, attributes: nil)
}

/**
 读取文件内容
 
 - author: 1606
 - date: 17-05-17 10:05:29
 
 - parameter filePath: 地址
 
 - returns: 文件内容
 */

func kReadArrayFilePath(filePath:String) -> Array<Any> {
    let aa = NSArray.init(contentsOfFile: filePath)
    return aa as! Array<Any>
}

func kReadDictionaryFilePath(filePath:String) -> NSDictionary {
    let dic = NSDictionary.init(contentsOfFile: filePath)
    return dic!
}

class HHTool: NSObject {
    class func getRandomNum() -> NSInteger {
        
        let randomNum = NSInteger(arc4random()%365) + 1;
        print("randomNum = ",randomNum,"?");
        
        return randomNum;
    }

}

