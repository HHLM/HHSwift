//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)


class Counter {

    var  count = 0
    func increment() -> Void {
        count +=  1
        self.count += 1
    }
    
    func increment(by amount: Int ) -> Void {
        count += amount
    }
    
    func rest() -> Void {
        count = 0
    }
}

let count = Counter()

count.increment()
count.increment(by: 100)
count.rest()

struct Pointx {
    
    var x = 0.0 ,y = 0.0
    
    func isToTheRightOf (x: Double)-> Bool {
    
        if self.x < x {
            return false
        }
        else{
          return true
        }
        
    }
}

let point = Pointx(x: 1.0,y: 1.0)

if point.isToTheRightOf(x:1) {
    print("This point is to the right of the line where x == 1.0")
}



struct HPoint {
    var x  = 0.0,y = 0.0
    
    // mutating 允许修改自身属性
     mutating func moveByX(detailX:Double , detailY:Double) {
        x += detailX
        y += detailY
    }
    
    
}

var  somePoint = HPoint(x: 10.1,y:1.0)

somePoint.moveByX(detailX: 2.0, detailY: 3.0)
print(somePoint.x ,somePoint.y)



class HHClass {
    class func someClass() {
        print("调用类方法")
    }
}

HHClass.someClass()


struct LevelTracker {
    
    
    static var highestUnlockedlevel = 1
    var currentLevel = 1
    
    static func unlock(_ level:Int) {
    
        if level > highestUnlockedlevel {
            highestUnlockedlevel = level
        }
    }
    
    static func isUnlocked(_ level:Int) -> Bool {
        
        return level <= highestUnlockedlevel
    }
    
    @discardableResult
    
    mutating func advance(to level: Int) -> Bool {
        
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        }else {
            return false
        }
        
        
    }
    
}



class Player {
    var track = LevelTracker()
    
    let playerName:String
    func completedLevel(level : Int) {
      
        
        LevelTracker.unlock(level + 1)
        track.advance(to: level + 1)
        
    }
    init(name: String) {
        playerName = name
    }
}


var player  = Player(name: "HHLM")

player.completedLevel(level: 1)
print(LevelTracker.highestUnlockedlevel)




player = Player.init(name: "jjjj")
if player.track.advance(to: 6) {
    print("6")
}else {
    print("不是6")
}











