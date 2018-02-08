//
//  ViewController.swift
//  HH-01
//
//  Created by LXH on 2017/11/15.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //()实例化 和 OC中的alloc/init 一样
        let p = HHPerson()
        print(p.name)
        let s = HHStudent()
        print(s.age)
        
    }



}

