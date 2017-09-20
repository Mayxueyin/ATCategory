//
//  UIBarButtonItem+XYBarButtonItem.h
//  MV-ShopDelivery-0.0.1
//
//  Created by 薛银 on 2017/1/3.
//  Copyright © 2017年 xueyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XYBarButtonItem)

/**
 1.创建只带文字的左边item
 
 @param title 标题
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)leftItemWithTitle:(NSString *)title target:(id)target action:(SEL)action;


/**
 2.创建只带文字的右边item
 
 @param title 标题
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)rightItemWithTitle:(NSString *)title target:(id)target action:(SEL)action;

/**
 3.快速创建一个图标barButtonItem 左边
 
 @param normalImage 默认图片名
 @param highlightedImage 高亮图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)leftItemWithNormalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target ction:(SEL)action;


/**
 4.快速创建一个图标barButtonItem 右边
 
 @param normalImage 默认图片名
 @param highlightedImage 高亮图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)rightItemWithNormalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target ction:(SEL)action;


/**
 7.快速创建一个图标barButtonItem 右边
 
 @param normalImage 默认图片名
 @param selectedImage 选中图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)rightItemWithNormalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage target:(id)target ction:(SEL)action;



/**
 5.快速创建一个带标题的barButtonItem 左边
 
 @param title 标题
 @param normalImage 默认图片名
 @param highlightedImage 高亮图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title normalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target ction:(SEL)action;





/**
 5.快速创建一个带标题的barButtonItem 左边,selectedImage状态
 
 @param title 标题
 @param normalImage 默认图片名
 @param selectedImage 高亮图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title normalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage target:(id)target ction:(SEL)action;





@end
