//
//  HHArithmeticModel.swift
//  HHSwift
//
//  Created by Mac on 2018/4/26.
//  Copyright © 2018年 HHLM. All rights reserved.
//

import UIKit
import AVFoundation

//MARK:算法 冒泡排序 、插入排序 、快速排序

class HHArithmeticModel: NSObject {

    /*
     冒泡排序 和 插入排序
     */
    override init() {
        super.init()
        var arr : Array<Int> = [10,23,21,30,6];
        bubleSort(array:&arr)
        quickSortArray(array: &arr, left: 0, right: arr.count - 1)
    }
}
/*
 需要改变函数外部的值 就需要用inout修饰
 变量名字前用&符号修饰 表明这个参数在内部是可以被改变的 可传递到原始数据
*/

/*
 冒泡排序 数组 ：[40, 30, 20, 10, 7, 6, 4]
 第一层循环先把最大的数 放到最右边 后面再循环依次把最大的数放到后面 就不管最后一个数了
 循环次数：0---[30, 40, 20, 10, 7, 6, 4]
 循环次数：0---[30, 20, 40, 10, 7, 6, 4]
 循环次数：0---[30, 20, 10, 40, 7, 6, 4]
 循环次数：0---[30, 20, 10, 7, 40, 6, 4]
 循环次数：0---[30, 20, 10, 7, 6, 40, 4]
 循环次数：0---[30, 20, 10, 7, 6, 4, 40]
 循环次数：1---[20, 30, 10, 7, 6, 4, 40]
 循环次数：1---[20, 10, 30, 7, 6, 4, 40]
 循环次数：1---[20, 10, 7, 30, 6, 4, 40]
 循环次数：1---[20, 10, 7, 6, 30, 4, 40]
 循环次数：1---[20, 10, 7, 6, 4, 30, 40]
 循环次数：2---[10, 20, 7, 6, 4, 30, 40]
 循环次数：2---[10, 7, 20, 6, 4, 30, 40]
 循环次数：2---[10, 7, 6, 20, 4, 30, 40]
 循环次数：2---[10, 7, 6, 4, 20, 30, 40]
 循环次数：3---[7, 10, 6, 4, 20, 30, 40]
 循环次数：3---[7, 6, 10, 4, 20, 30, 40]
 循环次数：3---[7, 6, 4, 10, 20, 30, 40]
 循环次数：4---[6, 7, 4, 10, 20, 30, 40]
 循环次数：4---[6, 4, 7, 10, 20, 30, 40]
 循环次数：5---[4, 6, 7, 10, 20, 30, 40]
 */
private func bubleSort(array:inout [Int]) {
    for i in 0..<array.count {
        for j in 0 ..< (array.count-1-i) {
            if array[j] > array[j+1] {
                let temp = array[j+1]
                array[j+1] = array[j]
                array[j] = temp
            }
             print("循环次数：\(i)---\(array)")
        }
    }
}
/*
 插入排序 数组 ：[40, 30, 20, 10, 7, 6, 4]
 
 循环次数：1---[30, 40, 20, 10, 7, 6, 4]
 循环次数：2---[30, 20, 40, 10, 7, 6, 4]
 循环次数：2---[20, 30, 40, 10, 7, 6, 4]
 循环次数：3---[20, 30, 10, 40, 7, 6, 4]
 循环次数：3---[20, 10, 30, 40, 7, 6, 4]
 循环次数：3---[10, 20, 30, 40, 7, 6, 4]
 循环次数：4---[10, 20, 30, 7, 40, 6, 4]
 循环次数：4---[10, 20, 7, 30, 40, 6, 4]
 循环次数：4---[10, 7, 20, 30, 40, 6, 4]
 循环次数：4---[7, 10, 20, 30, 40, 6, 4]
 循环次数：5---[7, 10, 20, 30, 6, 40, 4]
 循环次数：5---[7, 10, 20, 6, 30, 40, 4]
 循环次数：5---[7, 10, 6, 20, 30, 40, 4]
 循环次数：5---[7, 6, 10, 20, 30, 40, 4]
 循环次数：5---[6, 7, 10, 20, 30, 40, 4]
 循环次数：6---[6, 7, 10, 20, 30, 4, 40]
 循环次数：6---[6, 7, 10, 20, 4, 30, 40]
 循环次数：6---[6, 7, 10, 4, 20, 30, 40]
 循环次数：6---[6, 7, 4, 10, 20, 30, 40]
 循环次数：6---[6, 4, 7, 10, 20, 30, 40]
 循环次数：6---[4, 6, 7, 10, 20, 30, 40]
 
 */
func insertSort(array:inout [Int]) {
    for i in 0..<array.count {
        let key = array[i]
        var j =  i - 1
        while j >= 0 {
            if array[j] > key {
                array[j + 1] = array[j]
                array[j] = key
                print("循环次数：\(i)---\(array)")
            }
            j = j - 1
        }
    }
}

func quickSort(array:inout [Int],left:Int,right:Int) -> Int {
    
    var pivot_index = left
    let piovt = array[left]
    for i in (left ... right) {
        if array[i] < piovt {
            pivot_index += 1
            if pivot_index != i {
                let temp = array[i]
                array[i] = array[pivot_index]
                array[pivot_index] = temp;
            }
        }
    }
    let temp = array[left]
    array[left] = array[pivot_index]
    array[pivot_index] = temp;
    return pivot_index;
}

func quickSortArray(array:inout [Int],left:Int,right:Int) {
    if left < right {
        let pivot_index = quickSort(array: &array, left: left, right: right)
        quickSortArray(array: &array, left: left, right: pivot_index - 1)
        quickSortArray(array: &array, left: pivot_index, right: right)
    }
}


func quickSort<T:Comparable>(_ a:[T])->[T] {
    guard a.count > 1 else {
        return a
    }
    let middle = a[a.count/2]
    let less = a.filter {$0 < middle}
    let equal = a.filter  {$0 == middle}
    let greater = a.filter {$0 > middle}
    return quickSort(less) + equal + quickSort(greater)
}























