//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

struct TimesTable {
    let multiplier:Int
    subscript(index:Int) -> Int {
        return multiplier * index
    }
}

let thressTimesTable = TimesTable(multiplier:10)

print("\(thressTimesTable[2])")

var numberOfLegs = ["spider":8]
numberOfLegs["spider"] = 1

print(numberOfLegs)


/// 继承

class Vehicle {

    var currentSpeed = 0.0
    var description :String {
        return "这速度杠杠的，跑的真快啊"
    }
    
    func  makeNoise() {
        print("噪声太大了")
    }
    
}

let car = Vehicle()

print(car.description)


class HCar:Vehicle {
    var hasBasket = false

}


let bicycle = HCar ()

bicycle.hasBasket = true
bicycle.currentSpeed = 100.1
bicycle.description
bicycle .makeNoise()

/**
 *  @author 1606, 17-03-17 09:03:26
 *
 *  重写方法  需要在前面机上overrid 关键字 这样是 你打算重写 而不是意外提供一个相同定义
 */


class Train:Vehicle {
//    override func makeNoise() {
//        print("我是重写方法 速度跑的更快")
//    }
}

let train = Train()
train.makeNoise()

/**
 *  @author 1606, 17-03-17 09:03:51
 *
 *  重写属性
 */

class Truck:Vehicle {
    
    
    var gear = 1
    
    override var description: String {
        
        return super.description + " in grear \(gear)"
        
    }
    
    override var currentSpeed: Double {
        
        willSet {
            gear = Int(currentSpeed / 10.0 ) - 1
        }
        
        didSet {
            gear = Int(currentSpeed / 10.0 ) + 1
        }
    }
    
    
    
}

let truck = Truck()

truck.gear = 5

truck.currentSpeed  = 100.0

print(truck.description)


/**
 *  @author 1606, 17-03-17 10:03:53
 *
 *  阻止重写
 *  你可以通过标记为终点来阻止一个方法、属性或者下标脚本被重写。
    通过在方法、属性或者下标脚本的关键字前写 final 修饰符
    (比如 final var ， final func ， final class func ， fianl subscript )。
 
    任何在子类里重写终点方法、属性或下标脚本的尝试都会被报告为编译时错误。
    你在扩展中添加到类的方法、属性或下标脚本也可以在扩展的定义里被标记为终点。
 
    你可以通过在类定义中在 class 关键字前面写 final 修饰符( final class )
    标记一整个类为终点。任何想要从终点类创建子类的行为都会被报告一个编译时错误。
 
 */



