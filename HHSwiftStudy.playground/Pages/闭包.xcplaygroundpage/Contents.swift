//: [Previous](@previous)

import Foundation

/*
    1.相当于OC中得block
    2.可以当做参数传递
    3.需要的时候再执行
 
 Swift中：函数是特殊的闭包
 */


func sum(x:Int,y:Int) ->Int {
    return x + y
}

func a(){}
let aa = a


sum(x: 10, y: 10)

let hh_func = sum
print(sum)


/*
 OC的block
 void(^b) = ^{};
 */

//最简单的闭包
let block = {
    print("hello world")
}

block()
//闭包定义

//带参数的的闭包 待返回值
// {形参列表 -> 返回值 in 实现代码 }


let funcDemo = {( x:Int, y:Int) -> Int in

    print(x + y)
    return x + y
    
}

funcDemo(100,200)


let names = ["chairs","Alex","Ewa","balnce"]
func backward(_ s1:String,_ s2:String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by:backward)
reversedNames = names.sorted(by:backward)
print(reversedNames)

reversedNames = names.sorted(by:backward)


//闭包的表达式 语法是下面的形式
/*
{ (parameters) -> (return type) in statements
    
}

 */



func someFunctionThatTakesAClosure(clous:() -> Int) ->Int {
 
    print("尾随闭包")
    return 100000
}
someFunctionThatTakesAClosure {
    return 1000
}

someFunctionThatTakesAClosure { () -> Int in
 return 10
}

func sun(s1:String,s2:String) -> Int {
    return 100
}

let hh = { (s2:String,s1:String) -> Int in
    return 100
    
}

let demo = {
    print("没有参数没有返回值的闭包，可以省略所有的")
}
