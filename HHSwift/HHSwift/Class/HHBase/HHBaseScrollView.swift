//
//  HHBaseScrollView.swift
//  HHSwift
//
//  Created by Now on 2019/9/24.
//  Copyright © 2019 HHLM. All rights reserved.
//

import UIKit

class HHBaseScrollView: UIScrollView {
   
    var isBack = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    
    override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return panBack(gesture: gestureRecognizer)
    }
    
    func panBack(gesture: UIGestureRecognizer) -> Bool {
       return false
    }
    
}
