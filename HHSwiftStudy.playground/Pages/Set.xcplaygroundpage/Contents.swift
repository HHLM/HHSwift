//: [Previous](@previous)

import Foundation


var str = "Hello, playground"

//: [Next](@next)


//let numbers = [1,2,3,4]
//
//for num in numbers {
//    print(num)
//}

//let index = numbers[0]

// let定义不可变数组 var 定义可变数组

var threeDoubles = Array(repeating: 1, count: 3)

//可以添加任意类型的数组
var array = Array<Any>()

array.append(1)
array.append(2)
//array.append("ss")

//数组拼接
array = array + threeDoubles

let array1 = ["HHLM","ZHANGSAN"]

print(array1)

var array2 = ["HHLM","ZHANGSAN"]

array2.append("LISI")
print(array2)


var array3: [String] = ["ss"]

array3 = [String]()
array3.append("LOAD")

array3[0] = "HH"

array3 += array2
print(array3)

array3[0...1] = ["MMMM","AAAA","BBBB"]

print("替换后的数组\(array3)")
array3.removeLast()
array3.remove(at: 0)

array3.insert("MMMMM", at: 0)
array3.insert(contentsOf: ["sss","<<<<<<<<"], at: 0)
print(array3)
//遍历获取 下标和对应的值
for (index,value) in array3.enumerated() {
    print(index,value)
}


var list = [Int]()

for i in 0 ... 16 {
    list.append(i)
    
}
print("添加\(list)")

//字典

var dict = [String:NSObject]()

var dic = ["HHLM":"hhh"];
dic["ddd"] = "ll"
print(dic)

for (k ,v) in dic {
    print(k,v)
}

let aaaa = 10
let bbb = 10
if aaaa == bbb {
    
    print(aaaa.hashValue)
}

if array3.isEmpty {
    print("the arrays isEmpty")
}else {
    print("The array3 have \(array3.count)个item")
}

if array3.contains("HHLM") {
    print("the array3 contains \"HHLM\"")
}else {
    print("the array3 is no contains \"HHLM\"")
}




/**
 *  @author 1606, 17-03-15 09:03:37
 *
 *  集合
 */

var setA:Set = [1,2,3,4]

let setB:Set = [1,2,3,4,5]

let setC:Set = [4,6,7,8]

let setD:Set = [5,9,11,23]

setA.intersection(setB).sorted() //A.B之间相同的元素

setA.union(setB).sorted() //A.B之间所有的元素，去掉重复的

setA.symmetricDifference(setC).sorted() //A.C 之间不相同的部分的集合

setA.subtracting(setC).sorted() // 只在A中有，C中没有的元素合集

setA.isSubset(of: setB) //B中是否包含A的所有子集

setA.isSuperset(of: setB) //A中是否包含B的所有子集

setD.isDisjoint(with: setA)//判断A.B两个合集是否有相同值 有相同：flase 无相同：true

setA.isStrictSubset(of: setB) //判断A是不是B的子集
setA.isStrictSuperset(of: setB)
setB.isStrictSuperset(of: setA)//判断B是不是A的超集