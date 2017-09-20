//
//  UIButton+XYButton.h
//  MVShop
//
//  Created by 薛银 on 2016/12/28.
//  Copyright © 2016年 xueyin. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^buttonActionBlock)(UIButton *btn);

@interface UIButton (XYButton)

//整个屏幕霸占一个按钮
+ (UIButton *)reoladWebviewBtnWithFrame:(CGRect)frame target:(id)target action:(SEL)action;



/**
 1.创建Button只有标题

 @param title 标题
 @param target block事件
 @return UIButton
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title target:(buttonActionBlock)target;


/**
 2.创建button只带图片的点击
 
 @param normolImage 图片
 @param target 事件
 @return UIButton
 */
+ (UIButton *)createButtonWithNormolImage:(NSString *)normolImage target:(buttonActionBlock)target;



/**
 3.Button点击Block,带标题位置

 @param title 标题
 @param textColor 条标题颜色
 @param color 背景颜色
 @param frame 位置尺寸
 @param target 动作
 @return Button
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title titleColor:(UIColor *)textColor BackgroundColor:(UIColor *)color frame:(CGRect)frame target:(buttonActionBlock)target;


/**
 4.创建Button有:标题,正常图片,高亮图片

 @param title 标题
 @param normolImage 正常图片
 @param hightImage 高亮图片
 @param target Block事件
 @return UIButton
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title normolImage:(NSString *)normolImage hightImage:(NSString *)hightImage target:(buttonActionBlock)target;



/**
 5.创建Button有:标题,正常图片,选中图片

 @param title 标题
 @param normolImage 正常图片
 @param selectImage 选中图片
 @param target Block事件
 @return UIButton
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title normolImage:(NSString *)normolImage selectImage:(NSString *)selectImage target:(buttonActionBlock)target;



/**
 7.创建Button有:正常图片,选中图片

 @param normolImage 正常图片
 @param selectImage 选中图片
 @param target Block事件
 @return UIButton
 */
+ (UIButton *)createButtonWithNormolImage:(NSString *)normolImage selectImage:(NSString *)selectImage target:(buttonActionBlock)target;



/**
 8.封装创建UIButton的所有属性

 @param title 标题
 @param normolImage 正常图片
 @param hightImage 高亮拓片
 @param selectImage 选中图片
 @param textColor 字体颜色
 @param backgroundColor 背景色
 @param font 字体大小
 @param target Block事件
 @return UIButton
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title normolImage:(NSString *)normolImage hightImage:(NSString *)hightImage selectImage:(NSString *)selectImage textColor:(UIColor *)textColor BackgroundColor:(UIColor *)backgroundColor textFont:(UIFont *)font target:(buttonActionBlock)target;






@end
