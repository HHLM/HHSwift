//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
enum SomeEnumeration {
    
    case north
    case south
    case east
    case west
}


var directionToHead = SomeEnumeration.north

directionToHead = .east
directionToHead = .south
print(directionToHead)

switch directionToHead {
case SomeEnumeration.north:
    print("北")
    break
case .east:
    print("东")
    break
case .south:
    print("南")
    break
default:
    print("西")
    break
}


enum Barcode {
    case upc(Int ,Int ,Int,Int)
    case qrCode(String)
}

var  produce = Barcode.upc(1, 2, 3, 4)

var productQR = Barcode.qrCode("HHLM")

print(productQR,produce)


enum ASSIIControCharacter:Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum Planet:Int {
    case mercury = 1, venus,earch,mars,jupiter,saturn,uranus,neptune
}

var pent = Planet.mercury

var ASSIICTab = ASSIIControCharacter.tab

print(pent,ASSIICTab)

switch ASSIICTab {
case ASSIIControCharacter.tab:
    print(ASSIIControCharacter.tab)
default:
    print(ASSIIControCharacter.lineFeed)
}


/**
 *  @author 1606, 17-03-16 08:03:18
 *
 *  递归枚举  递归枚举是拥有另一个枚举作为枚举成员关联值的枚举。
 当编译器操作递归枚举时必须插入间接寻址层。
 你可以在声明枚举成员之前使用 indirect关键字来明确它是递归的。
 */

enum ArithemticExpression {
    case number(Int)
    indirect case addtion(ArithemticExpression,ArithemticExpression)
    indirect case multiplication(ArithemticExpression,ArithemticExpression)
}

//也可以在枚举之前就写indirect 

indirect enum ArithemticExpressions {
    case number(Int)
    case addtion(ArithemticExpressions,ArithemticExpressions)
    case multiplication(ArithemticExpressions,ArithemticExpressions)
}

let five = ArithemticExpression.number(5)
let four = ArithemticExpression.number(4)
let  two = ArithemticExpression.number(2)
let sum = ArithemticExpression.addtion(five, four)
let pruoduct = ArithemticExpression.multiplication(sum, ArithemticExpression.number(2))


func evaluate(_ expression: ArithemticExpression) -> Int {
    switch expression {
    case let ArithemticExpression.number(value):
        return value
        
    case let .addtion(letf,rigth):
        return evaluate(letf)+evaluate(rigth)
        
    
    case let .multiplication(left, right):
        return evaluate(left) * evaluate(right)
        
    default:
        
        break
        
    }
}
print(sum)
