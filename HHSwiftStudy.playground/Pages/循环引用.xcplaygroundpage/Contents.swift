//: [Previous](@previous)

import Foundation

var str = "Hello, playground"
str = "kkkkk"
print(str)

//: [Next](@next)

class networkTools:NSObject {
    
    //解除循环引用，需要打断链条
    //方法一：OC的方法
    // weak var  weakself = self
    //方法二
    //[unnowed self] 表示 {}中所有的self 都是assign的 ，不会强引用 但是有对象释放，指针不会变化
    func LoadData(finished: () ->()) {
        print("开始加载数据....")
        finished()
    }
    deinit {
        print("网络工具 886")
    }
}

var tools : networkTools?

tools = networkTools()

tools?.LoadData {
    print("这就是尾随闭包吧？？？")
}

