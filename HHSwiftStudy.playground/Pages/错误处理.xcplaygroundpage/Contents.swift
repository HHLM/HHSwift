//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
 //抛出一个错误


/**
 *  @author 1606, 17-03-17 17:03:34
 *
 *  注意
 
 Swift 中的错误处理， try, catch  和 throw 的使用与其他语言中的异常处理很相仿。
 不同于许多语言中的异常处理——包括 Objective-C ——Swift 中的错误处理并不涉及调用堆栈展开，
 一个高占用过程。因此， throw 语句的性能特征与 return 比不差多少。
 */

//try
//try!
//try?

//func canThrowError() throws -> String {
//
//}
//func canThrowsErrors() -> String{
//
//}





struct Item {
    var price : Int
    var count : Int
}

class VendingMachine {
    
    var inventory = [
    
        "Candy":"HH",
        "Chips":"LM",
        "Prize":"MM"
    ]
    
    var cionsDep = 0
    
    func dispressScan(snack:String)  {
        print("\(snack)")
    }
    
    
}


/**
 *  @author 1606, 17-03-20 10:03:31
 *
 *  do - catch
 */

/**
 *  @author 1606, 17-03-20 10:03:31
 *
 *  当你想要在同一句里处理所有错误时，使用 try?能让你的错误处理代码更加简洁。
 比如，下边的代码使用了一些方法来获取数据，或者在所有方式都失败后返回 nil。
 */

let a = ""
let b = ""
