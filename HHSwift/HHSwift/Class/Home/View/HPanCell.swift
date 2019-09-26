//
//  HPanCell.swift
//  HHSwift
//
//  Created by LXH on 2017/3/24.
//  Copyright © 2017年 HHLM. All rights reserved.
//

import UIKit

class HPanCell: UITableViewCell {

    var view1 = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
    var view2 = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
    var view3 = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
    let pan = UIPanGestureRecognizer.init(target: nil, action: #selector(viewPan))
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutSubviews() {
        view1.backgroundColor = UIColor.yellow
        self.addSubview(view1)
        view1.frame = CGRect(x:self.frame.size.width-90, y:0,width:90,height: self.frame.size.height-1)
        
        
        view2.backgroundColor = UIColor.green
        self.addSubview(view2)
        view2.frame = CGRect(x:self.frame.size.width-180,y: 0,width:90,height: self.frame.size.height-1)
        
        
        view3.backgroundColor=UIColor.orange
        pan.addTarget(self, action: #selector(viewPan))
        pan.delegate=self
        view3.frame = CGRect(x:0,y: 0,width:self.frame.size.width,height: self.frame.size.height-1)
        view3.addGestureRecognizer(pan)
        self.addSubview(view3)
    }
    
    @objc func viewPan(sender:UIPanGestureRecognizer){
        
        
        let translation : CGPoint = sender.translation(in: self)
        
        
        if(sender.state == UIGestureRecognizer.State.began)
        {
            
            
            if(translation.x<0)
            {
                
                if(view3.center.x + translation.x < self.frame.size.width/2-180)
                {
                    return;
                    
                }
                begainLeftPan = true//确定视图是向左滑动
                view3.center=CGPoint(x:view3.center.x + translation.x,y: view3.center.y )
                
                
            }
            else
            {
                if(view3.center.x + translation.x < self.frame.size.width/2)
                {
                    view3.center=CGPoint(x:view3.center.x + translation.x, y:view3.center.y )
                    
                }
                
            }
            
            
        }
        if(sender.state == UIGestureRecognizer.State.changed)
        {
            if(begainLeftPan)
            {
                
                if(translation.x < -180)//如果偏移量小于最小值，将视图固定最小值并停止继续滑动
                {
                    view3.center=CGPoint(x:self.frame.size.width/2-180,y: view3.center.y )
                    
                    return
                }
                
                if(view3.center.x < self.frame.size.width/2-180)//但是图位置最小值时停止继续滑动
                {
                    return
                    
                }
                if(view3.center.x + translation.x < self.frame.size.width/2-180)//当位置不是最小值，但加上此次偏移量小于最小值，视图固定最小值否，则继续滑动
                {
                    
                    view3.center=CGPoint(x: self.frame.size.width/2-180, y:view3.center.y )
                }
                else
                {
                    view3.center=CGPoint(x: view3.center.x + translation.x, y:view3.center.y )
                    
                }
                if(view3.center.x + translation.x > self.frame.size.width/2)
                {
                    view3.center=CGPoint(x: self.frame.size.width/2,y: view3.center.y )
                    begainLeftPan = false
                    
                }
                
            }
            
        }
        if(sender.state == UIGestureRecognizer.State.ended)
        {
            
            if(view3.center.x + translation.x < self.frame.size.width/2-180)
            {
                begainLeftPan = false
                
            }
            
            if(view3.center.x + translation.x <= self.frame.size.width/2-90)
            {
                view3.center=CGPoint(x:self.frame.size.width/2-180, y:view3.center.y )
                
            }
            else
            {
                
                view3.center=CGPoint(x:self.frame.size.width/2, y:view3.center.y )
                
            }
            
            
            
        }
        
        sender.setTranslation(CGPoint(x:0, y:0), in: self)

        
    }

    
    var begainLeftPan:Bool = false
    
    
    //拖动开始判断是竖直拖动？
    override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool
    {
        let translation = pan.translation(in: self)
        if(fabs(translation.y) > fabs(translation.x))
        {
            return false
        }
        return true
        
        
    }

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = UIColor.gray
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
