//
//  UIView+FontSize.h
//  ZJNFontSizeDemo
//
//  Created by 朱佳男 on 2017/12/22.
//  Copyright © 2017年 ShangYuKeJi. All rights reserved.
//

#import <UIKit/UIKit.h>
//默认设置为1 如果为0的话不做适配
#define UITextViewEnable 1
#define UITextFieldEnable 1
#define UIButtonEnable 1
#define UILabelEnable 1
@interface UIView (FontSize)

/**
 设置需要忽略的控件tag值

 @param tagArr 不做适配的控件tag值
 */
+(void)setIgnoreTags:(NSArray<NSNumber *>*)tagArr;


/**
 设置字体大小比例

 @param value 设置的比例
 */
+(void)setFontScale:(CGFloat)value;
@end
