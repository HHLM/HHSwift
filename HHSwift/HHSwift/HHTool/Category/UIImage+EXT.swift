//
//  UIImage+EXT.swift
//  HHSwift
//
//  Created by LXH on 2017/3/28.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import ImageIO
import UIKit
import Foundation

//MARK:扩展

extension UIImage {

    /*
        生成一张纯色图片
     */
    //类方法
    class func imageWithColor(color:UIColor,size:CGSize) -> UIImage? {
        
        UIGraphicsBeginImageContextWithOptions(size, true, UIScreen.main.scale)
        color.set()
        UIRectFill(CGRect.init(x: 0, y: 0, width: size.width, height: size.height))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    // 压缩图片
    
    func imgaetoScale(scale:CGFloat) -> UIImage? {
    
        UIGraphicsBeginImageContext(CGSize.init(width: self.size.width * scale, height: self.size.height * scale))
        
        self.draw(in: CGRect.init(x: 0, y: 0, width: self.size.width * scale, height: self.size.height * scale))
        
        let scaleImage = UIGraphicsGetImageFromCurrentImageContext()
        
        UIGraphicsEndImageContext()
        
        return scaleImage
    }
    
    // MARK:-给图片着色
    
    func tintedImage(color:UIColor,rect:CGRect,alpha:CGFloat) -> UIImage? {
        
        //TODO:xxx
        let imageRect = CGRect.init(x: 0, y: 0, width: self.size.width, height: self.size.height)
        //FIXME:修改我
        UIGraphicsBeginImageContextWithOptions(self.size, true, self.scale)
        let ctx = UIGraphicsGetCurrentContext()
        self.draw(in: imageRect)
        ctx?.setFillColor(color.cgColor)
        ctx?.setAlpha(alpha)
        ctx?.setBlendMode(.sourceAtop)
        ctx?.fill(rect)
        let imageRef = ctx?.makeImage()
        let drakImage = UIImage.init(cgImage: imageRef!, scale: self.scale, orientation: self.imageOrientation)
        UIGraphicsEndImageContext()
        return drakImage
    }
    
    func tintedImage(color: UIColor) -> UIImage {
    return self.tintedImage(color: color, rect: CGRect(x:0.0, y:0.0, width:self.size.width, height:self.size.height), alpha: 1.0)!
    }
    
    func tintedImage(color: UIColor, rect: CGRect) -> UIImage {
        return self.tintedImage(color: color, rect: rect, alpha: 1.0)!
    }
    
    func tintedImage(color: UIColor, alpha: CGFloat) -> UIImage{
        return self.tintedImage(color: color, rect: CGRect(x:0.0, y:0.0, width:self.size.width, height:self.size.height), alpha: alpha)!
    }
    
    
    // MARK:- 图片原图()
    
    func originalImage() -> UIImage? {
        
        return self.withRenderingMode(.alwaysOriginal)
        
    }
    
    // MARK:- 图片圆角
    
    func imageCornerRadius(radius:CGFloat) ->UIImage? {
        
        let rect = CGRect.init(x: 0, y: 0, width: self.size.width, height: self.size.height)
        UIGraphicsBeginImageContextWithOptions(self.size, true, self.scale)
        let context = UIGraphicsGetCurrentContext()
        context?.addPath(UIBezierPath.init(roundedRect: rect, cornerRadius: radius) as! CGPath)
        self.draw(in: rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
    
    // MARK:- 图片所占内存大小
    func memorySize() -> Int {
        
        return self.cgImage!.height * self.cgImage!.bytesPerRow
    }
    
    // MARK:- 图片旋转角 度
    
    func imageRotated(byDegrees:CGFloat) -> UIImage? {
        
        return self.imageRotated(byDegrees:CGFloat(Double(byDegrees) * .pi / 180))
        
    }
}
