//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//函数

/**
 *  @author 1606, 17-03-10 10:03:36
 *
 *  定义格式
    外侧参数
    无返回值的三种情况
 */

/**
 *  @author 1606, 17-03-10 10:03:50
 *
 *  函数定义
 */

//带返回值的函数
func sum(a:Int ,b:Int) -> Int{
    
    return a+b
}

let result = sum(a: 10, b: 20)


//无返回值的函数
func demo(str: String){
   print("方法一"+str)
}

func demo1(str :String) -> (){
    print("方法二"+str)
}

func demo2(str : String) -> Void {
    print("方法三"+str)
}
demo(str: "HHLM")
demo1(str: "FHX")
demo2(str: "LXH")


//外部参数

func sun(number1 a:Int, number b: Int) -> Int {
    print("数据一：\(a) 数据二：\(b) 数据之和\(a+b)")
    return a + b
}

sun(number1: 100, number: 200)

let mySum = sun;
let result1 = mySum(10, 20)
print(result1)

//闭包
/**
 *  @author 1606, 17-03-10 10:03:22
 *
 *  闭包定义
    尾随闭包
    循环引用
 */
/**
 *  @author 1606, 17-03-10 11:03:35
 *
 *  闭包类似于OC的block
    预先定义好的代码
    在需要的时候执行
    可以当作参数传递
    可以有返回值
    包含self时候需要注意循环引用
 */

//定义一个闭包

//闭包 = {（形参）-> 返回值 in // 代码实现 }
// in 用于区分 函数定义和代码实现

let sumFunc = { (x:Int ,y:Int) -> Int in
    
    print(x + y)
    return x+y
}

sumFunc(10,2)

let  demoFunc = {
    print("最简单\n的闭包")
}
demoFunc()


/**
 *  @author 1606, 17-03-10 11:03:18
 *
 *  GCD
 */


//带参数 带返回值
func getString(personName:String,isHaveFirend:Bool) -> String {

    if isHaveFirend {
        print("我的名字是\(personName)")
    }else {
         print("我的名字不是\(personName)")
    }
   
    return personName + personName
}

let name =  getString(personName: "HHLM",isHaveFirend: true)

//不带返回值的函数

func greet(person:String) {
        print("我的名字")
}
func greet1(person:String)-> Void {
    
}

func greet2(person:String)-> () {
    
}

//带多个返回值的函数

func maxAndmin(array:[Int]) ->(max:Int ,min:Int ) {
    var maxx = array.last
    var minn = array.first
    
    for valuer in array[1..<array.count] {
        if valuer < minn! {
            minn = valuer
        } else {
            maxx = valuer
        }
    }
    
    return (maxx!,minn!)
    
}

print(maxAndmin(array: [1,2,3,4]))


func max(array:[Int])->(min:Int,max:Int)? {
    
    if array.isEmpty {
        return nil;
    }
    
    var currentMin = array.first
    var currentMax = array.first
    
    for value in array[1..<array.count] {
        if value < currentMin! {
           currentMin = value
        }else if value > currentMax! {
        currentMax = value
        }
    }
    
    return (currentMax!,currentMin!)
}

print( max(array: [1,3,5,7]) ?? [0,0])

func shopping(_:Int ,name1:String,name2:String) {
    print("买了种水过," + name1 + name2)
}
shopping(2, name1: "苹果", name2: "橘子")



//可变形参

func arithme(numbers:Double...)->Double {
    var total:Double = 0
    for number in numbers {
        total += number
    }
    return total/Double(numbers.count)
}
print("平均数\(arithme(numbers: 1.0,2.0,3.12,4.98,5.4567))")

/**
 //输入输出形式参数
 - author: 1606
 - date: 17-03-15 15:03:46
 */


/*
 如果你想函数能够修改一个形式参数的值，而且你想这些改变在函数结束之后依然生效，那么就需要将形式参数定义为输入输出形式参数。
 
 在形式参数定义开始的时候在前边添加一个 inout关键字可以定义一个输入输出形式参数。输入输出形式参数有一个能输入给函数的值，函数能对其进行修改，还能输出到函数外边替换原来的值。
 
 你只能把变量作为输入输出形式参数的实际参数。你不能用常量或者字面量作为实际参数，因为常量和字面量不能修改。在将变量作为实际参数传递给输入输出形式参数的时候，直接在它前边添加一个和符合 ( &) 来明确可以被函数修改。
 */

func swapTwoInts(_ a: inout Int ,_ b: inout Int) {
    
    let count = a
    a = b
    b = count
    print(a ,b)
}

var someIne = 3
var otherInt = 5

swapTwoInts(&someIne, &otherInt)
//没有返回值 就改变了someInt 和 otherInt的值


/*
 输入输出形式参数与函数的返回值不同。上边的 swapTwoInts没有定义返回类型和返回值，但它仍然能修改 someInt和 anotherInt的值。输入输出形式参数是函数能影响到函数范围外的另一种替代方式。

 */

/**
 *  @author 1606, 17-03-15 15:03:29
 *
 *  函数类型作为形式参数
 */
func addTwoInts(number1:Int , number2:Int) -> Int {
    
    return number1 + number2
}

var mathFunction:(Int,Int) -> Int = addTwoInts

print("sum = \(mathFunction(10,71))")


func stepBackward(_ intput:Int) ->Int {
    return intput - 1
}

func stepForward(_ input:Int) ->Int {
   return input + 1
}

print(stepBackward(5),stepForward(5))


func choosSetpFunction(backwards:Bool) -> (Int) -> Int {
    return backwards ? stepForward:stepBackward;
}

print(choosSetpFunction(backwards: false)(10))
print(choosSetpFunction(backwards: true)(10))