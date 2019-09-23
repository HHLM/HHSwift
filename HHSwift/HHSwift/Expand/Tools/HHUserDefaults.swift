//
//  HHUserDefaults.swift
//  HHSwift
//
//  Created by LXH on 2017/4/11.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import Foundation
/**
 *  @author 1606, 17-04-11 10:04:28
 *
 *  参考卓同学的https://github.com/lacklock/UserDefaultsEVO
 */

//避免key重复就要用不同的对象

public protocol UserDefaultSettable {
    var uniqueKey :String {get}
}



public extension UserDefaultSettable where Self:RawRepresentable,Self.RawValue == String {

    func store(value: Any?) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    var storeValue: Any? {
        return UserDefaults.standard.value(forKey: uniqueKey)
    }
    var  storeString:String? {
        return storeValue as? String
    }
    
    
    func store(url: URL?){
        UserDefaults.standard.set(url, forKey: uniqueKey)
    }
    var storeURL:URL? {
      return  UserDefaults.standard.url(forKey: uniqueKey)
    }
    
    
    func store(value:Bool) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    var storeBool:Bool {
        return  UserDefaults.standard.bool(forKey: uniqueKey)
    }
    
    func store(value:Int) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    var storeInt:Int {
        return UserDefaults.standard.integer(forKey: uniqueKey)
    }
    
    func store(value:Float) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    var storeFloat:Float {
        return UserDefaults.standard.float(forKey: uniqueKey)
    }
    
    func store(value:Double) {
        UserDefaults.standard.set(value, forKey: uniqueKey)
    }
    var storeDouble:Double {
        return UserDefaults.standard.double(forKey: uniqueKey)
    }
    
    var uniqueKey:String {
        return "\(Self.self).\(rawValue)"
    }
    
    //删除
    func removed(){
        UserDefaults.standard.removeObject(forKey: uniqueKey)
    }
    
}
