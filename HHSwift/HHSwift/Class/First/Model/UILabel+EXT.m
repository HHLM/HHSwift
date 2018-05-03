//
//  UILabel+EXT.m
//  HHSwift
//
//  Created by Mac on 2018/5/2.
//  Copyright © 2018年 HHLM. All rights reserved.
//

#import "UILabel+EXT.h"

@implementation UILabel (EXT)

- (instancetype)initWithFrame:(CGRect)frame textColor:(UIColor *)textColor
{
    self = [super initWithFrame:frame];
    if (self) {
        self.textColor = textColor;
    }
    return self;
}



@end
