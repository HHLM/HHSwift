//
//  HHFileManager.swift
//  HHSwift
//
//  Created by Now on 2019/9/26.
//  Copyright © 2019 HHLM. All rights reserved.
//

import UIKit

/** 实例方法和类方法
 实例方式：
 func #name#(#parameters#) -> #return type# {
     function body
 }
 类方法：
 
 */

/**
 获取 Domains 的路径
 */

/*
1、 SearchPathDirectory 搜索目录的可选参数
applicationDirectory            ：   在 applications 目录下搜索。
demoApplicationDirectory        ：   在 applications/Demo 的目录下搜索。
developerApplicationDirectory   ：   在 Developer/Applications 目录下搜索。
adminApplicationDirectory       ：   在 Applications/Utilities 目录下搜索。
libraryDirectory                ：   在 Library 目录下搜索。
developerDirectory              ：   在 Developer 目录下搜索，不只是一个开发者。
userDirectory                   ：   在用户的主目录下搜索。
documentationDirectory          ：   在 Documentation 目录下搜索。
documentDirectory               ：   在 Documents 目录下搜索。
coreServiceDirectory            ：   在 System/Library/CoreServices 目录下搜索。
autosavedInformationDirectory   ：   自动保存的文档位置搜索 （Documents/Autosaved）
desktopDirectory                ：   在用户桌面搜索。
cachesDirectory                 ：   在本地缓冲目录在搜索（Library/Caches）
applicationSupportDirectory     ：   本地应用所支持的目录下搜索（Library/Application Support）。
downloadsDirectory              ：   本地下载downloads目录。
inputMethodsDirectory           ：   在输入方法目录下搜索（Library/Input Methods）。
moviesDirectory                 ：   在用户电影目录搜索（~/Movies）。
musicDirectory                  ：   在用户音乐目录搜索（~/Music）。
picturesDirectory               ：   在用户图片目录搜索（~/Pictures）。
printerDescriptionDirectory     ：   在系统本地PPDs目录下搜索（Library/Printers/PPDs）。
sharedPublicDirectory           ：   在本地用户分享目录下搜索（~/Public）。
preferencePanesDirectory        ：   在系统的偏好设置目录在搜索（Library/PreferencePanes）。
itemReplacementDirectory        ：   For use with NSFileManager's URLForDirectory:inDomain:appropriateForURL:create:error:
allApplicationsDirectory        ：   应用能够发生的所有路径 。
allLibrariesDirectory           ：   资源可以发生的所有目录 。
 
2、 SearchPathDomainMask 路径领域的模糊搜索的可选参数
userDomainMask                  ：   用户的主目录路径领域搜索。
localDomainMask                 ：   当前设备本地路径领域搜索。
networkDomainMask               ：   网络共享的路径领域搜索。
systemDomainMask                ：   由苹果提供的系统路径领域搜索。
allDomainsMask                  ：   上述所有情况的路径领域搜索。

*/
class HHFileManager: NSObject {

    //MARK:主目录
    class func homeFilePath() -> String {
        return NSHomeDirectory()
    }
    
    //MARK:沙盒路径 document
    class func documentPath() -> String {
        return NSSearchPathForDirectoriesInDomains(.documentationDirectory, .userDomainMask, true).first ?? ""
    }
    
    //MARK:app存储目录 不能修改
    class func applicationPath() -> String {
        return NSSearchPathForDirectoriesInDomains(.applicationDirectory, .userDomainMask, true).first ?? ""
    }
    
    //MARK:配置目录，配置文件存这里
    class func libPrePath() -> String {
        var path  =  NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first ?? ""
        path.append(contentsOf: "/Perferences")
        return path
    }
    
    //MARK:缓存目录
    class func libCachesPath() -> String {
        var path  =  NSSearchPathForDirectoriesInDomains(.libraryDirectory, .userDomainMask, true).first ?? ""
        path.append(contentsOf:"/Caches")
        return path
    }
    //MARK:缓存目录
   class func cachesPath() -> String {
        let path  =  NSSearchPathForDirectoriesInDomains(.cachesDirectory, .userDomainMask, true).first ?? ""
        return path
   }

}
