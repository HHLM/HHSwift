//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: 便利字符串的字符

for s in str.characters {
    print(s)
}

let l = str.lengthOfBytes(using: String.Encoding.utf8)
let ll = str.characters.count
let lll = str.utf8.count

//字符串长度
let len = str.lengthOfBytes(using: String.Encoding.utf8)
print(len)

let len1 = str.characters.count

print(len1)

let len2  = str.utf8.count;
print(len2)


let st1 = "HH"
let st2 = "LM"
let i = 64

str = "\(i)个" + st1 + st2

print(str)

let h = 8
let m = 23
let s = 9
let stringTime = String(format: "%02d:%02d:%02d", arguments: [h, m, s])

let sss = String(format: "----%02d:%02d", arguments: [h,m])
print(sss)

let ssss = "\(h):\(m):\(s)"
print(ssss)
let sssss = String(format: "%02d",arguments:[h])
print(stringTime + sssss)


let helloString = "大神带你飞"

let aaa = (helloString as NSString).substring(with: NSRange(location: 0,length: 3))

let bb = (helloString as NSString).substring(with: NSRange.init(location: 0, length: 2))
print(aaa)

let  starIndex = helloString.startIndex;
let endIndex = helloString.endIndex



var bbbbb = helloString.substring(with: Range(starIndex..<endIndex))
print(bbbbb)

//都是字符串拼接 

/*
 不能把 String或者 Character追加到已经存在的 Character变量当中，
 因为 Character值能且只能包含一个字符。

 */
bbbbb += "HHLM"

bbbbb.append("ssss")



/**
 *  @author 1606, 17-03-14 16:03:05
 *
 *  转义特殊字符 \0 (空字符)， \\ (反斜杠)， \t (水平制表符)， \n (换行符)， \r(回车符)， \" (双引号) 以及 \' (单引号)；
 
 
    任意的 Unicode 标量，写作 \u{n}，里边的 n是一个 1-8 个与合法 Unicode 码位相等的16进制数字。
 */

print(bbbbb)
for  characte in bbbbb.characters {
    
}

let ar = "\u{1F496}"
//print(ar,ar.index(after: ar.startIndex))
print(bbbbb[bbbbb.index(before: bbbbb.endIndex)])

let indx = bbbbb.index(before: bbbbb.endIndex)
let inx  = bbbbb.index(after: bbbbb.startIndex)

let greeting = "Guten Tag!"
greeting[greeting.startIndex]
bbbbb[bbbbb.index(after: bbbbb.startIndex)]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 1)
greeting[index]
// a

for index in bbbbb.characters.indices {
    print(bbbbb[index],index)
}

var welcome = "Hi,世界"
welcome.insert("!", at: welcome.endIndex)
//welcome.insert(contentsOf: "ssss".characters, at: welcome.index(after: welcome.startIndex))
welcome.insert(contentsOf: "HHLM".characters, at: welcome.index(welcome.startIndex, offsetBy: 1)) //可以插入到任意位置

let range = welcome.index(welcome.endIndex, offsetBy: -5)..<welcome.endIndex
welcome.removeSubrange(range)
print(welcome)

welcome.hasPrefix("HHHLM") //头部是否包含
welcome.hasSuffix("M")      //尾部是否是


let dogString = "Dog‼🐶"

for s in dogString.unicodeScalars {
    print(s)
}



