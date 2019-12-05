//
//  HHSAnimation1.swift
//  HHSwift
//
//  Created by LXH on 2017/4/27.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

let viewLineHeight : CGFloat = 1.0
class HHSAnimation1: HHBaseVC {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
       

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private lazy var viewLine: UIView = {
        let view = UIView()
        
        view.frame = CGRect(x: 0, y: self.view.frame.size.height - viewLineHeight, width: self.view.frame.size.width, height: viewLineHeight)
        
        return view
    }()

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}