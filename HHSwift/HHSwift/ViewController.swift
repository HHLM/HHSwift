//
//  ViewController.swift
//  HHSwift
//
//  Created by LXH on 2017/3/10.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView.init(frame: CGRect(x:0,y:0,width:100,height:100))
        self.view.addSubview(view)

        view.backgroundColor = UIColor.red;
        
        let imgView = UIImageView.init(frame: CGRect.init(x: 100, y: 100, width: 100, height: 100))
        self.view.addSubview(imgView)
        imgView.backgroundColor = UIColor.green
        
        let btn = UIButton.init(frame: CGRect.init(origin: CGPoint.init(x: 200, y: 200), size: CGSize.init(width: 100, height: 100)))
        self.view.addSubview(btn)
        btn.backgroundColor = UIColor.blue

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



