//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

/*
 使用i++ 过程中会多一个变量
 num = i++
 temp = i
 num = temp
 i = temp + i
 */

// 使用 ++i
/*
    num = ++i
    i = i+1
    num = i
 */
//Swift的switch


//变量i区间 [0 5]
for i  in 0 ... 5 {
    print(i)
}
//变量i区间 [0 5) reversed 反转
for i  in (0 ..< 5).reversed()  {
    print(i)
}

for var i in 0..<10 {
    print(i+1)
}

for i in 0...10 {
    print("\(i)")
}
