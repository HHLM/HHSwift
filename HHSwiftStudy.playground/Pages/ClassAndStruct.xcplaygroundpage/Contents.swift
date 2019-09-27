//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)

//结构体是值类型（美枚举也是值类型），类是引用类型（指针类型）

class SomeClass {
    
}
struct SomeStruct {
    var witdth = 0
    var height = 0
    var long = 0
}

class Person {
    
    var model = SomeStruct()
    var name:String?
    var age:Int?
    var heigth:String?
    var friend:String?
}


let prson = Person()

prson.name = "HHLM"

print(prson.name ?? "")

prson.age = 28
print(prson.age ?? 1)

let someOne =  SomeStruct()


enum CompassPoint {
    case north,east,south,west
}

var cuurentDirection = CompassPoint.west

let remeberDirection = cuurentDirection

cuurentDirection = .east


if remeberDirection == .west {

    print("The remeberDirection direction is still.west")
}

class ViewModel {

    var name:String?
    var isMan:Bool = true
    var vvv = 10
    
}

let obj = ViewModel()

obj.name = "HHLM"
obj.isMan = true
obj.vvv = 100
print(obj.vvv)


struct FixRange {
    var firstValue:Int
    let length:Int
    
}

var rangeItems = FixRange(firstValue:1,length:100)
rangeItems.firstValue = 6


/*
 // 注意

如果被标记为 lazy; 修饰符的属性同时被多个线程访问并且属性还没有被初始化，
则无法保证属性只初始化一次。
*/

class DataManger {

    lazy var importer = ViewModel()
    var  data = [String]()
    
    
    
}
let manger = DataManger()
manger.data.append("some data")
manger.data.append("some more data")

struct Point {
    var x = 0.0 ,y = 0.0
}
struct Size {
    var width = 0.0,height = 0.0
    
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center:Point {
        get {
            let centerX = origin.x + size.width/2
            let centerY = origin.y + size.height/2
            return Point(x:centerX,y:centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - size.width/2
            origin.y = newCenter.y - size.height/2
        }
    }

}


    var square = Rect(origin: Point(x:0.0,y:0.0), size: Size(width:10.0,height:10.0))

    let centersss = square.center

    square.center = Point(x:15.0,y:15.0)



struct Cuboid {
    var width = 0.0 , heigth = 0.0 , depth = 0.0
    var volume :Double {
    
        return width * heigth * depth
    }
    
}

let cuble = Cuboid(width:10.0,heigth:10.0,depth:10.0)

print("立方体的体积:",cuble.volume)



/*
 willSet 会在该值被存储之前被调用。
 didSet 会在一个新值被存储后被调用。
 如果你实现了一个 willSet 观察者，新的属性值会以常量形式参数传递。
 你可以在你的 willSet 实现中为这个参数定义名字。如果你没有为它命名，那么它会使用默认的名字 newValue 。
 
 同样，如果你实现了一个 didSet观察者，一个包含旧属性值的常量形式参数将会被传递。你可以为它命名，
 也可以使用默认的形式参数名 oldValue 。如果你在属性自己的 didSet 观察者里给自己赋值，你赋值的新值就会取代刚刚设置的值。
 */

class StepCounter {
    var totalStep:Int  = 199 {
        willSet(a) {
            print("新的数据\(a)")
        }
        
        didSet {
            if totalStep > oldValue {
                print("adddeStep")
            }else {
                print("小于初始值")
            }
        }
    }
}
let step = StepCounter()

step.totalStep = 200
step.totalStep = 100
step.totalStep = 200
step.totalStep = 300
step.totalStep = 300
step.totalStep = 300




struct SomeStructure {
    static var stetpType = "KKKK"
    static var stepCount :Int { //只读状态 不能被修改
        return 1
    }
}
SomeStructure.stetpType = "HHLM"
print(SomeStructure.stetpType,SomeStructure.stepCount)


enum SomeEnum {
    static var someEnumType = "HHM"
    static var someEnumCount:Int {
        return 6
    }
}

class SomeClassStep {
    static var someClassStepType = "type"
    static var someClassCount :Int {
        return 8
    }
    class var overType: Int  {
        return 168
    }
}


struct AudioChannel {
    
    static let audioLevel:Int = 10
    static var maxInputLevel = 0
    
    var currentLevel :Int = 0 {
        
        didSet {
            
            if currentLevel > AudioChannel.audioLevel {
                currentLevel = AudioChannel.audioLevel
                 print("超过",currentLevel)
            }
            
            if currentLevel > AudioChannel.maxInputLevel {
                AudioChannel.maxInputLevel = currentLevel;
                 print("不超：",currentLevel)
            }
        }
    }
}
var audio = AudioChannel()
audio.currentLevel = 7
audio.currentLevel = 11


print(AudioChannel.maxInputLevel)
