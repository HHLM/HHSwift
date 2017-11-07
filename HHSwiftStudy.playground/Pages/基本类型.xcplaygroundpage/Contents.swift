//: [Previous](@previous)

import UIKit
import Foundation




var str = "Hello, playground"

//: [Next](@next)

var a = 1

a = 2;

var b = "2222" //let 设置常量 不能修改

b = "4444"

let img = UIImageView.init(frame:  CGRect(x:0,y:0,width:100,height:40))
let view = UIView.init(frame: CGRect(x:0,y:0,width:100,height:100))
view.backgroundColor = UIColor.red




var image = UIImage.init(named: "1.jpeg")

img.image = image;

img.backgroundColor = UIColor.red

var x: Int


x = 100

x = 1000

var y:Double
y = 10.5;

/// 0b十进制数 
/// 0x十六进制
/// 0o八进制数
let num16 = 0o1100
print(num16)

let doubleNumber = 1_123.123
print(doubleNumber)

/*
    十进制和exp指数切换 基数乘以10的exp次方
 例如   1.68 * 10^2 = 1.68*100 = 168
    1.68 * 10^-2 = 1.68 * 0.01 = 0.168
 
 */

//不同类型数据之间的计算 要显式转换
let m = Double(x) + y


let minValue = UInt8.min //最小值是0 
let maxValue = UInt8.max //最大值是255，值得类型是UInt8

/*
 Int8 -128~127
 UInt8 0~255
 Int16 -32768~32767
 UInt16 0~65535
 Int32 -2147483648~2147483647
 UInt32 0 ~ 4294967295
 Int64 -9223372036854775808~9223372036854775807
 */

//计算的时候必须要类型一样


//因此尽量先用let 需要改变的时候再换成var

var friendlyWelcome = "friendlyWelcome"

print(_:separator:terminator:)
print("The current value of friendlyWelcome is \(friendlyWelcome)")

typealias HHLM = UInt32
var maxAmpLitudeFound = HHLM.min
print(maxAmpLitudeFound,HHLM.max)


//BOOL布尔

let TrueOrFalse = true

if TrueOrFalse {
    print("YES")
}else {
    print("NO")
}

let i = 1
if i == 1 {
    print("i 等于 \(i)")
}else {
    print("i 不是\(i)")
}



var sum = 0

for  i in 0 ..< 9 {
    sum+=i
}

//元组 一个Int 和一个String组合起来表示HTTP状态码的两种不同的值
//不需要的数据可以用夏下划线（ _ ）表示
let https404Error = (statusCpode: 404,descripe: "Not Found",true)

let httpcode = (110,111,112)

let stringCode = ("HHLM",TrueOrFalse)

let (jusetTheStatusCode,_,_) = https404Error
print(https404Error.statusCpode)
print(https404Error.descripe)
//print(https404Error.2)



print(httpcode.2)

var int:Int? = 1

if let Hint = int {
    print(int ?? 0)
}
//或者下面的方法

if int != nil {
    print(i)
}


