//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


//属性要求定义为变量属性，在名称前面使用 var 关键字。可读写的属性使用 { get set } 来写在声明后面来明确，使用 { get } 来明确可读的属性。


protocol SomeProtocol {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
    static func sometypeMethod()
    
}

protocol AnotherProtocol {
    
    static var someTypeProtocol:Int {get set}
}

struct Person:SomeProtocol {
    internal static func sometypeMethod() {
        
    }

     var doesNotNeedToBeSettable: Int

     var mustBeSettable: Int
}
let ss = Person.init(doesNotNeedToBeSettable: 12, mustBeSettable: 34)


class Starship:SomeProtocol {
    internal static func sometypeMethod() {
        
    }

    internal var doesNotNeedToBeSettable: Int = 0

    internal var mustBeSettable: Int = 0


    var prefix :String?
    var name:String = ""
    init(name:String,prefix:String?=nil) {
        self.name = name
        self.prefix = prefix
    }
}

////在方法的 func 关键字之前使用 mutating 关键字，来表示在该方法可以改变其所属的实例，以及该实例的所有属性

protocol Togglable {
    
    mutating func toggle()
}

enum OnOffSwitch:Togglable {
    case Off,On
    
    mutating func toggle() {
        switch self {
        case .Off:
            self = .On
        default:
            self  = .Off
        }
    }
}

var ligthSwitch = OnOffSwitch.Off
ligthSwitch.toggle()


protocol SomeProtocol1 {
    init(someParameter: Int)
}

class someObject:SomeProtocol1 {
    required init(someParameter: Int) {
        
    }
}
//在遵循协议的类的所有子类中， required 修饰的使用保证了你为协议初始化器要求提供了一个明确的继承实现。

/**
 *  @author 1606, 17-03-20 15:03:48
 *
 *  由于 final 的类不会有子类，如果协议初始化器实现的类使用了 final 标记，你就不需要使用 required 来修饰了。因为这样的类不能被继承子类。详见阻止重写了解更多 final 修饰符的信息。
 */




/**
 *  @author 1606, 17-03-20 15:03:15
 *
 *  如果一个子类重写了父类指定的初始化器，并且遵循协议实现了初始化器要求，那么就要为这个初始化器的实现添加 required 和 override 两个修饰符：
 */

protocol SomeProtocol2 {
    init()
}

class SomeSuperClass2 {
    init() {
        // initializer implementation goes here
    }
}

class SomeSubClass: SomeSuperClass2, SomeProtocol2 {
    // "required" from SomeProtocol conformance; "override" from SomeSuperClass
    required override init() {
        // initializer implementation goes here
    }
}


protocol DiceGame {

    var dice:SomeSubClass{get}
    func play()
}

protocol DiceGameDelegate {
    func gameDidStar(_ game:DiceGame)
    func game(_ game:DiceGame,didSelectRow didRow:Int)
}

