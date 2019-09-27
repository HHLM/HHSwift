//: Playground - noun: a place where people can play

import UIKit



var dict = ["love":"HHLM"]

dict["love"] = "HHL"

dict.updateValue("HMM", forKey: "love")
dict.updateValue("LLLL", forKey: "sss")
dict.updateValue("11", forKey: "11")
dict.removeValue(forKey: "11")
print(dict)
var dic = [1:1]
 
dic.updateValue(1, forKey: 2)
print(dic)


let  array = [1,1,1,1,1]
var i = 0

// i != 5的时候就会执行 {} 里面方法
while i != array.count {
    i += 1
    print("结束")
    
}
var j = 0

//先执行前面的方法 一直到最后条件触发才结束
repeat {
     j += 1
    print(j,"结束")
    
}
    while j != array.count

var str = "HHLM"
switch str {
case "HHLM":
    print(str)
    break
  
case "HMM":
    print("HMM")
    break
default:
    print("LLL")
    break
}

let view = UIView.init(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
view.backgroundColor = UIColor.red

var isFlase = false

func greet(preson:[String:String]) {
    guard preson["name"] == nil else {
        print(preson["name"] ?? "HHLM")
        return
    }
}

greet(preson: ["name":"HMM"])

var name:String?
if name != nil {
    print(name ?? "JJJ")
}


