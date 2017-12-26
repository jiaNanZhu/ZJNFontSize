//
//  UIFont+MyFont.m
//  ZJNFontSizeDemo
//
//  Created by 朱佳男 on 2017/12/23.
//  Copyright © 2017年 ShangYuKeJi. All rights reserved.
//

#import "UIFont+MyFont.h"
#import <objc/runtime.h>
#define ScreenScale [UIScreen mainScreen].bounds.size.width/320.0
@implementation UIFont (MyFont)
+(void)load{
    Method classMethod = class_getClassMethod(self, @selector(systemFontOfSize:));
    Method myClassMethod = class_getClassMethod(self, @selector(mySystemFontOfSize:));
    method_exchangeImplementations(classMethod, myClassMethod);
}
+(UIFont *)mySystemFontOfSize:(CGFloat)fontSize{
    UIFont *font = [UIFont mySystemFontOfSize:fontSize*ScreenScale];
    return font;
}
@end
