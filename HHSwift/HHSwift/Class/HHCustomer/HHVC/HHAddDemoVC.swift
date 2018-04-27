//
//  HHAddDemoVC.swift
//  HHSwift
//
//  Created by LXH on 2017/11/7.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHAddDemoVC: HHBaseVC {
    
    var t1 : UITextField?
    var t2 : UITextField?
    var la : UILabel?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func sum() {
        
        guard  let num1 = Int(t1?.text ?? "0"),
            let num2 = Int(t2?.text ?? "0")
            else {
            return
        }
        la?.text  = "\(num1 + num2)"
    }
    func setupUI() -> Void {
        
        //uitextfiled
        let textfiled1 = UITextField(frame: CGRect(x: 20, y: 80, width: 100, height: 40))
        textfiled1.borderStyle = .roundedRect
        textfiled1.text = "0"
        view.addSubview(textfiled1)
        t1 = textfiled1
        
        let lab = UILabel(frame: CGRect(x: 20, y: 120, width: 100, height: 40))
        lab.text = "+"
        view.addSubview(lab)
        lab.textAlignment = .center
        
        
        let textfiled2 = UITextField(frame: CGRect(x: 20, y: 160, width: 100, height: 40))
        textfiled2.borderStyle = .roundedRect
        textfiled2.text = "0"
        t2 = textfiled2
        view.addSubview(textfiled2)
        
        let lab2 = UILabel(frame: CGRect(x: 20, y: 240, width: 100, height: 20))
        lab2.text = "结果"
        view.addSubview(lab2)
        lab2.textAlignment = .center
        la = lab2
        
        let btn  = UIButton(frame: CGRect(x: 20, y: 200, width: 100, height: 40))
        btn.setTitle("=", for: .normal)
        btn.addTarget(self, action: #selector(sum), for: .touchUpInside)
        view.addSubview(btn)
        
        
        //label
        //button
    }
    

}
