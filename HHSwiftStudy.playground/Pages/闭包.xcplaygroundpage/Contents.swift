//: [Previous](@previous)

import Foundation

let names = ["chairs","Alex","Ewa","balnce"]
func backward(_ s1:String,_ s2:String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by:backward)
reversedNames = names.sorted(by:backward)
print(reversedNames)

//闭包的表达式 语法是下面的形式
/*
{ (parameters) -> (return type) in statements
    
}
 */



func someFunctionThatTakesAClosure(clous:() -> Int) ->Int {
 
    print("尾随闭包")
    return 10
}
someFunctionThatTakesAClosure {
    return 10
}

someFunctionThatTakesAClosure { () -> Int in
 return 10
}