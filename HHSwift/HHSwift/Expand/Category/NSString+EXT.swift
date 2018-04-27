//
//  NSString+EXT.swift
//  HHSwift
//
//  Created by Mac on 2018/4/26.
//  Copyright © 2018年 HHLM. All rights reserved.
//

import Foundation

extension String {
    //MARK: -- 字符串的长度
    func length() -> Int {
        return self.lengthOfBytes(using: String.Encoding.utf8)
    }
}
