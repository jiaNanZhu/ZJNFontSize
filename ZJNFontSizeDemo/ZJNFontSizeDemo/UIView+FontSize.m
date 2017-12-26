//
//  UIView+FontSize.m
//  ZJNFontSizeDemo
//
//  Created by 朱佳男 on 2017/12/22.
//  Copyright © 2017年 ShangYuKeJi. All rights reserved.
//

#import "UIView+FontSize.h"
#import <objc/message.h>
#define IgnoreTagKey @"IgnoreTagKey"
#define FontScaleKey @"FontScaleKey"
#define ScreenScale [UIScreen mainScreen].bounds.size.width/320.0
@implementation UIView (FontSize)
/**
 设置需要忽略的空间tag值
 
 @param tagArr tag值数组
 */
+ (void)setIgnoreTags:(NSArray<NSNumber*>*)tagArr{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:tagArr forKey:IgnoreTagKey];
    [defaults synchronize];
}

/**
 设置字体大小比例
 
 @param value 需要设置的比例
 */
+ (void)setFontScale:(CGFloat)value{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:@(value) forKey:FontScaleKey];
    [defaults synchronize];
}

+ (NSArray *)getIgnoreTags{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSArray *ignoreTagsArr = [defaults objectForKey:IgnoreTagKey];
    return ignoreTagsArr.count?ignoreTagsArr:0;
}

+ (CGFloat)getFontScale{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSNumber *valueNum = [defaults objectForKey:FontScaleKey];
    return valueNum?valueNum.floatValue:0;
}
@end

@interface UILabel (FontSize)

@end

@interface UIButton (FontSize)

@end

@interface UITextField (FontSize)

@end

@interface UITextView (FontSize)

@end

@implementation UILabel (FontSize)
+(void)load{
    if (!UILabelEnable) return;
    
    Method testMethod = class_getInstanceMethod(self, sel_registerName("initWithCoder:"));
    Method testMethod1 = class_getInstanceMethod(self, sel_registerName("myInitWithCoder:"));
    
    method_exchangeImplementations(testMethod, testMethod1);
    
}
-(id)myInitWithCoder:(NSCoder *)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        NSArray *ignoreTags = [UIView getIgnoreTags];
        for (NSNumber *num in ignoreTags) {
            if (self.tag == num.integerValue) {
                return self;
            }
        }
        CGFloat fontSize = self.font.pointSize;
        CGFloat scale = [UIView getFontScale];
        self.font = [self.font fontWithSize:fontSize *(scale?:ScreenScale)];
    }
    return self;
}
@end

@implementation UIButton (FontSize)
+(void)load{
    if (!UIButtonEnable) return;
    
    Method classMethod = class_getInstanceMethod(self, sel_registerName("initWithCoder:"));
    Method myMethod = class_getInstanceMethod(self, sel_registerName("myInitWithCoder:"));
    method_exchangeImplementations(classMethod, myMethod);
    
}
-(id)myInitWithCoder:(NSCoder *)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        NSArray *ignoreTags = [UIView getIgnoreTags];
        for (NSNumber *num in ignoreTags) {
            if (self.tag == num.integerValue) {
                return self;
            }
        }
        CGFloat fontSize = self.titleLabel.font.pointSize;
        CGFloat scale = [UIView getFontScale];
        self.titleLabel.font = [self.titleLabel.font fontWithSize:fontSize *(scale?:ScreenScale)];
    }
    return self;
}
@end

@implementation UITextField (FontSize)
+(void)load{
    if (!UITextFieldEnable) return;
    
    Method classMethod = class_getInstanceMethod(self, sel_registerName("initWithCoder:"));
    Method myMethod = class_getInstanceMethod(self, sel_registerName("myInitWithCoder:"));
    method_exchangeImplementations(classMethod, myMethod);
    
}
-(id)myInitWithCoder:(NSCoder *)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        NSArray *ignoreTags = [UIView getIgnoreTags];
        for (NSNumber *num in ignoreTags) {
            if (self.tag == num.integerValue) {
                return self;
            }
        }
        CGFloat fontSize = self.font.pointSize;
        CGFloat scale = [UIView getFontScale];
        self.font = [self.font fontWithSize:fontSize *(scale?:ScreenScale)];
    }
    return self;
}
@end

@implementation UITextView (FontSize)
+(void)load{
    if (!UITextViewEnable) return;
    
    Method classMethod = class_getInstanceMethod(self, sel_registerName("initWithCoder:"));
    Method myMethod = class_getInstanceMethod(self, sel_registerName("myInitWithCoder:"));
    method_exchangeImplementations(classMethod, myMethod);
    
}
-(id)myInitWithCoder:(NSCoder *)aDecode{
    [self myInitWithCoder:aDecode];
    if (self) {
        NSArray *ignoreTags = [UIView getIgnoreTags];
        for (NSNumber *num in ignoreTags) {
            if (self.tag == num.integerValue) {
                return self;
            }
        }
        CGFloat fontSize = self.font.pointSize;
        CGFloat scale = [UIView getFontScale];
        self.font = [self.font fontWithSize:fontSize *(scale?:ScreenScale)];
    }
    return self;
}
@end























