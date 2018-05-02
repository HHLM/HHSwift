//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//定义对象 通常是可选的

//可选类型

var num: Int? = 10 //num可能是nil

//但是num 是nil的时候 不能参与运算的 所以要强行解包  
/// 就是在变量后面 加个！

let rr = num! + 100

// 但是当num 、、是nil的时候 强行解包会报错的

//下面代码 当num时nil时候 if分支里面的代码不户执行
if let n = num {
    let r = n + 10
    print("r=\(r)")
    
}

// 还可以使用 ?? 运算符

//判断是不是nil  若是nil 就是用 ?? 后面的数

var h_num: Int?

let h_x = (h_num ?? 0) + 10

print(h_x)


let possibleString: String? = "HHLM"

let noPossibleString:String = possibleString!

let assString:String! = "ssss"

let implicitString:String = assString

print(implicitString,noPossibleString)


func canTrowAnError() {
    
}


func sum(x :Int,y :Int) -> Int {
    print(10 + 20)
 return x + y
}

sum(x: 10, y: 20)
let  aget = -3

//断言 前面的成立才会继续说下去 要不然就断言出发 程序终止
let l =  assert(aget < 0,"HHLM")

print(l)

//do 语句创建了一个新的容器范围，可以让错误被传递到到不止一个的 catch 分句里。
//
