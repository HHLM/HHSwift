//: [Previous](@previous)

import Foundation
import UIKit
var str = "Hello, playground"

//: [Next](@next)

var a = 10
var b = 20
let c = a > b ? a:b
print(c)

if a>b {
    print(a, "a大于b", b)
}else {
    print(a,b,"a不大于b")
}

let urll = NSURL(string : "www.baidu.com")

let request = NSURLRequest(url: urll as! URL)

if urll != nil {
    let  rw = NSURLRequest(url:urll as! URL );
    
}

/// if let 不能和 && 、|| 使用

let hName : String? = "HHLM"
let hAge: Int? = 18

if var name = hName, var age = hAge {
    name = "HHL"
    age = 1
    print(name,age)
}

//guard let h_age = hAge else {
//
//    print("hAge是空")
//}


let point =  CGPoint(x: 10, y: 10)

switch point {
    
case let p where p.x > 0 && p.y > 0 :
    print("SSSSSS")
    break
    
default:
    print("HHHHHH")
    break
}

var sum = 0
for i in 0 ..< 10 {
    sum += i
}
print(sum)
sum = 0
for i in 0...10 {
    sum += i;
}
print(sum)

for _ in 0 ... 10 {
    print(1)
}

//for var i = 0; i < 10 ; i++ {
//    
//}

let str1 : String? = "HHLM"

let ss = str1 ?? ""

for s in ss.characters {
    print(s)
}
		