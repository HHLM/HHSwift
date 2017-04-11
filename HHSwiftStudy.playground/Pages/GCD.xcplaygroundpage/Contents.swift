//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

DispatchQueue.global().async {
    print("子线程")
    DispatchQueue.main.async {
        print("主线程")
    }
}
DispatchQueue.global().async { 
    DispatchQueue.main.async {
        print("1111111")
    }
}
let time =  DispatchTime.now() + .seconds(60)
DispatchQueue.main.asyncAfter(deadline: time) { 
    print("1111")
}


//public protocol UserDefaultsSettable{
//    var uniqueKey:String {get}
//}
//
//public extension UserDefaultsSettable where Self

