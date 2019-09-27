//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: [Next](@next)
struct Funs {

    var fanCount :Int
    init() {
        fanCount = 100
    }
    
}

let f = Funs()

print("fans count \(f.fanCount)")


struct Celsius {

    var temperatureInCase :Double
    
    init(fromFa  farchive:Double ) {
        temperatureInCase = (farchive - 32.0)/1.8
    }
    
    
    
}



let b = Celsius(fromFa:100.1)
print(b.temperatureInCase)



struct Color {
    
    let blue ,red ,green: Double
    
    init(red: Double, green: Double, blue: Double) {
        
        
        self.red = red
        self.green = green
        self.blue = blue
        
    }

    init(white : Double ) {
        red = white
        green = white
        blue = white
    }
    
}

let mageta = Color(red:1.0,green:1.0,blue:0.0)


let  halfGray = Color(white:1)





class SurveyQuestions {
    
    var text:String
    var personse :String?
    init(text:String) {
        self.text = text
    }
    
    func ask()  {
        print(text)
    }
}

let cheeseQ = SurveyQuestions.init(text: "Do you  love me")

cheeseQ.ask()

cheeseQ.personse = "YES, I love you"



class Bicycle {
    
    var  numberWheels = 0
    var description :String {
        return "\(numberWheels) wwwww"
    }
    
    
}


class HHH:Bicycle {
    override init () {
        super.init()
        numberWheels = 2
    }
}

let bicycle = Bicycle()
bicycle.numberWheels = 4
print(bicycle.description)

let hh = HHH()
print(hh.description)

class Food {
    var name:String
    init(name:String) {
        self.name = name
    }
    convenience init () {
        self.init(name:"HHLM")
    }
}


let foodName = Food()
print(foodName.name)


class Hfood:Food {
    var hName :Int
    init(name: String ,hName:Int) {
        self.hName = hName
        super.init(name: name)
    }
    
    override convenience init(name:String) {
        self.init(name: name,hName:1)
    }
}

let sixEggs = Hfood(name:"eggs",hName:6)



/**
 *  @author 1606, 17-03-17 14:03:28
 *
 *  反初始化
 */

class Bank {
    static var coinsInBank = 10_000
    static func distribute(coins numberOfCoins:Int)-> Int {
        
        let numberOfCoinsToVend = min(numberOfCoins, coinsInBank)
        coinsInBank -= numberOfCoinsToVend
        return numberOfCoinsToVend
    }
    
    static func receive(coions:Int) {
        coinsInBank += coions
    }
    
}



class Palyer {
    
    var coinsPalyer :Int
    init(coins:Int) {
        coinsPalyer = Bank.distribute(coins: coins)
    }
    func win(coins:Int)  {
        coinsPalyer += Bank.distribute(coins: coins)
    }
    deinit {
        Bank.receive(coions: coinsPalyer)
        print("------------------------------")
    }
}



let pay = Palyer(coins:100)

print(pay.coinsPalyer)

pay.win(coins: 2000)

print(pay.coinsPalyer,Bank.coinsInBank)


class Residence{

    var name:String
    var age : Int
    
    init(name:String,age:Int) {
        self.age = age
        self.name = name
    }
}

let person = Residence(name:"H",age:28)









