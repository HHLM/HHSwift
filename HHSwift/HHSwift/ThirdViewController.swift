//
//  ThirdViewController.swift
//  HHSwift
//
//  Created by LXH on 2017/3/21.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .blue
        self.navigationItem.title = "第三页"
        // Do any additional setup after loading the view.
        
        print("按钮的右侧按钮坐标：", kView_mx(view: loginBtn))
        view.addSubview(self.switch_1)
        view.addSubview(self.textfiled)
        view.addSubview(self.progress)
        
        loginBtn.y = 100.0
        view.addSubview(loginBtn)
        print(switch_1.x)
    }

    fileprivate lazy var loginBtn:UIButton = {
        
        let btn = UIButton.init(type: UIButtonType.custom)
        btn.frame = CGRect.init(x: kWidth/2 - 100/2, y: 100, width: 100, height: 60)
        btn.addTarget(self, action: #selector(logout), for: UIControlEvents.touchUpInside)
        
        btn.setTitle("退出", for: .normal)
        btn.backgroundColor = .red
        return btn
    }()

    
    // MARK: - UISwitch
    fileprivate lazy var switch_1:UISwitch = {
    
        let swit = UISwitch.init(frame: CGRect.init(x: 20, y: 300, width: 80, height: 20))
        swit.isOn = false
        swit.thumbTintColor = UIColor.green //点点的颜色
        swit.tintColor = UIColor.yellow //背景色
        swit.onTintColor = UIColor.red  //开的颜色
        swit.addTarget(self, action: #selector(open), for: .touchUpInside)
        return swit
        
    }()
    
    // MARK: -UITextField
    fileprivate lazy var textfiled:UITextField = {
        
        let txtfiled = UITextField.init(frame: CGRect.init(x: 100, y: 300, width: 280, height: 40))
        txtfiled.keyboardType = .decimalPad
        
        txtfiled.isSecureTextEntry = true
        txtfiled.placeholder = "请输入密码"
        txtfiled.borderStyle = UITextBorderStyle.roundedRect
        txtfiled.font = UIFont.systemFont(ofSize: 16)
        txtfiled.delegate = self
        print("打印位置")
        DLog("打印位置")
        print(HHClassFromString("ThirdViewController") ?? "")
        return txtfiled
    }()
    
    
    fileprivate lazy var progress:UIProgressView = {
        
        let progress = UIProgressView.init(frame: CGRect.init(x: 40, y: 400, width: kWidth - 80, height: 30))
        progress.progressTintColor = UIColor.red
        progress.trackTintColor = UIColor.brown
        progress.progress = 0.5
        progress.progressViewStyle = .bar
        return progress
        
    }()
    
//
    
    @objc func open(swithch:UISwitch) {
        print(swithch.isOn)
    }
    
    @objc func logout(btn:UIButton) {
        if (self.navigationController?.viewControllers.count)! > 1 {
            self.navigationController?.popViewController(animated: true)
        }else {
            
        
            self.navigationController?.dismiss(animated: true, completion: { 
                
            })
             showAlert(title: "HHH",vc:self)
        }
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }

}
