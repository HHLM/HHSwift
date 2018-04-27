//
//  HHAnimation1.swift
//  HHSwift
//
//  Created by LXH on 2017/4/6.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HHAnimation1: HHBaseVC {

    
    var btnn:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnn = button()
        view.addSubview(btnn!)
        /// 不能添加到懒加载的方法里面去  不会执行
        let pan = UIPanGestureRecognizer(target: self, action: #selector(panButton))
        btnn?.addGestureRecognizer(pan)
        clipButton()
    }

    deinit {
         print("销毁了")
        btn.removeFromSuperview()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func button() -> UIButton {
        let button = UIButton(type: .custom)
        button.setTitle("点我或\n拖动我", for: .normal)
        button.frame = CGRect(x:100,y:100,width:50,height:50)
        
        button.titleLabel?.numberOfLines = 0
        button.contentHorizontalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.translatesAutoresizingMaskIntoConstraints = false;
        button .addTarget(self, action: #selector(clicked), for: .touchUpInside)
        return button
    }
    
    fileprivate var btn:UIButton = {
        
        var button = UIButton(type: .custom)
        button.setTitle("点我或\n拖动我", for: .normal)
        button.frame = CGRect(x:100,y:100,width:50,height:50)
    
        button.titleLabel?.numberOfLines = 0
        button.contentHorizontalAlignment = .center
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .gray
        button.translatesAutoresizingMaskIntoConstraints = false;
        button .addTarget(self, action: #selector(clicked), for: .touchUpInside)
        return button
    }()
    
    func clipButton(){
        btnn?.layer.cornerRadius = (btnn?.width)!/2
        btnn?.clipsToBounds = true
    }

    
    @objc func panButton(pan: UIPanGestureRecognizer) {
        
        switch pan.state {
            
        case .began:
            break
            
        case .changed:
            break
        
        case .ended:
            break
            
        default:
            break
            
        }
        
        DLog("为什么不动")
        btnn?.center = pan.location(in: view)
    }
    
    @objc func clicked() {
        
        let vc = HHAnimation1()
        navigationController?.pushViewController(vc, animated: true)
        #if false
            
        #else
            
        #endif
        
    }
}
