//
//  HHScrollView.swift
//  HHSwift
//
//  Created by LXH on 2017/3/20.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit


private let KMargin = 10
private let KLableHeight = 30.0

class HHScrollView: UIScrollView {

    var buttonClickBack :(() -> ())?
    
    override init(frame: CGRect) {
    
        super.init(frame: frame)
        self.backgroundColor = UIColor.red
        let lab:UILabel = UILabel.init(frame: CGRect(x: 40, y: 10, width: kWidth - 20, height: 30))
        self.addSubview(lab)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("")
    }
   
}


