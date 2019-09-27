//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

class HHClass {
    
    var sss:String?

    lazy var title:String = {
        let title = "HHLM"
        return title
    }()
    
}

let cls = HHClass()

print(cls.title)

//var i = 10 --
//repeat {
//    print("先执行一段代码")
//}while i < 1

var num = -1
repeat{
    print("num=\(num)")
}while num > 0
