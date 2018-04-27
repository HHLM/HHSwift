//
//  HHAnimationTransition.swift
//  HHSwift
//
//  Created by LXH on 2017/4/27.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

enum HHCircleSpreadType:NSInteger {
    case Present = 0
    case Dismiss
}

class HHAnimationTransition: NSObject,UIViewControllerAnimatedTransitioning,CAAnimationDelegate {
    
    
    var type:HHCircleSpreadType
    
    init(_ type:HHCircleSpreadType) {
        
        self.type = type
    }
    
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval{
        return 0.5;
    }
    
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        
        switch type {
        case .Present:
            self.present(Animation: transitionContext)
            break
        default:
            self.dismiss(Animation: transitionContext)
        }
        
    }
    
    func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        
    }
    
    func  present(Animation transitionContext:UIViewControllerContextTransitioning) {
      
        
        
    }
    
    
    func dismiss(Animation transitionContext:UIViewControllerContextTransitioning){
        

    
    }
}

