//
//  UIView+EXT.swift
//  HHSwift
//
//  Created by LXH on 2017/3/28.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import Foundation
import UIKit



extension UIView {

    var x:CGFloat {
        
        set {
            var rect = self.frame
            rect.origin.x = newValue
            self.frame = rect
        }
        get {
            return self.frame.origin.x
        }
        
    }
    
    var y:CGFloat {
    
        set {
            var rect = self.frame
            rect.origin.y = newValue
            self.frame = rect
            
        }
        get {
            return self.frame.origin.y
        }
    }
    
    var width:CGFloat {
    
        set {
            var rect = self.frame
            rect.size.width = newValue
            self.frame = rect
        }
        get {
            return self.frame.size.width
        }
    }
    
    var height:CGFloat {
        
        set {
            var rect = self.frame
            rect.size.width = newValue
            self.frame = rect
        }
        get {
            return self.frame.size.height
        }
    }
    
    var bottom:CGFloat {
        
        set {
            var rect = self.frame
            rect.origin.y = newValue - self.frame.size.height
            self.frame = rect
            
        }
        get {
            return self.frame.origin.y + self.frame.size.height
        }
    }
    
    var right:CGFloat {
        
        set {
            var rect = self.frame
            rect.origin.x = newValue - self.frame.size.width
            self.frame = rect
            
        }
        get {
            return self.frame.origin.x + self.frame.size.width
        }
    }
    
    var centerX:CGFloat {
    
        set {
            var center = self.center
            center.x = newValue
            self.center = center
        }
        get {
            return self.center.x
        }
    }
    
    var centerY:CGFloat {
        
        set {
            var center = self.center
            center.y = newValue
            self.center = center
        }
        get {
            return self.center.y
        }
    }
    
    var leftSpacing:CGFloat {
    
        set {
            self.x = newValue
        }
        get {
            return self.x
        }
    }
    
    var topSpacing:CGFloat {
     
        set {
            self.y = newValue
        }
        get {
            return self.y
        }
    }
    
    var rightSpacing:CGFloat {
    
        set {
            self.width = (self.superview?.width)! - newValue - self.x
        }
        get {
            return (self.superview?.width)! - self.width - self.x
        }
    }
    
    var bottomSpacing:CGFloat {
        
        set {
            self.height = (self.superview?.height)! - self.y - newValue
        }
        get {
            return (self.superview?.height)! - self.height - self.y
        }
    }
    
}
