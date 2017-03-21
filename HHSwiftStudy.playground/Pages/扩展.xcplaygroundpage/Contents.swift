//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


/*
 Swift 中的扩展可以：
 
 添加计算实例属性和计算类型属性；
 定义实例方法和类型方法；
 提供新初始化器；
 定义下标；
 定义和使用新内嵌类型；
 使现有的类型遵循某协议

 */

//extension SomeType {
//
//    
//}
//
//extension SomeType:SomeProtocolm,AnotherProtocol {
//
//    
//}

extension Double {

    
    var km : Double {
        
        return self * 1000.0
    }
    
    var m :Double {
        return self;
    }
    
    var cm :Double {
        return self * 0.01
    }
    var mm :Double {
        return self/1_000.0
    }
}

let oneInch = 25.4.mm
/**
 *  @author 1606, 17-03-20 10:03:22
 *
 *  扩展方法
 */

struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}



extension Rect {

    init(center:Point,size:Size) {
      
        
        let orginx = center.x - (size.width/2)
        let orginy = center.y - size.height/2
        
        self.init(center:Point(x:orginx,y:orginy),size:size)
    }
}

//let centerRect = Rect(center:Point(x:4.0,y:4.0),size:Size(width:100.0,height:100.0))




/**
 *  @author 1606, 17-03-20 10:03:36
 *
 *  方法
 */
extension Int {

    
    func repetitions(task:()->Void)  {
        
        for _ in 0..<self {
            task()
        }
    }
    
}


3.repetitions(task: ) {
    print("hell0")
}

3.repetitions(task: {
    print("HHLM")
})



// MARK: - 增加了扩展的实例方法仍可以修改（或异变）实例本身。结构体和枚举类型方法在修改 self 或本身的属性时必须标记实例方法为 mutating ，和原本实现的异变方法一样
extension Int {

    mutating func square(){
        self * self
    }
}

var someInt = 3
someInt.square()
//print(someInt.square())

extension Int {

    subscript (digitIndex:Int) ->Int {
    
        var decimalBase = 1
        for _ in 0 ..< digitIndex {
            decimalBase *= 10
            print(decimalBase)
        }
        return (self / decimalBase) % 10
    
    }
}





/**
 *  @author 1606, 17-03-20 11:03:25
 *
 *  内嵌类型
 */

extension Int {

    enum Kind {
        case Negation,Zero,Positive
    }
    var kind :Kind {
        switch self {
        case 0:
            return .Zero
            
        case let x where x > 0:
            return .Positive
            
        default:
            return .Negation
            
            
        }
    }
    
}


func printKinds(numbers:[Int]) {

    for number in numbers {
    
        switch number.kind {
        case .Negation:
            print("-----")
        case .Zero:
            print("0000000")
        default:
            print("+++++++")
        }
    }
}

printKinds(numbers: [1,22,-100,555,0,6666])