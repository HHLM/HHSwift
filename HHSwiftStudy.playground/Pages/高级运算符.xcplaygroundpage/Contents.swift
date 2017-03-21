//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

// ~按位取反

let hhm :Int = 0b111000
let hhm1 = ~hhm
print(hhm)

//位与运算 都是1 才是1
let firstBit:Int = 0b11110100
let secondBit:Int = 0b01001111

let last = firstBit & secondBit
print(last)

//位或运算 一个是1 就是1

let last1 = firstBit | secondBit
print(last1)

//异或运算 相同为0 相异为1 

let last2 = firstBit ^ secondBit
print(last2)



