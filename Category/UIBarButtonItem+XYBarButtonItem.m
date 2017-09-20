//
//  UIBarButtonItem+XYBarButtonItem.m
//  MV-ShopDelivery-0.0.1
//
//  Created by 薛银 on 2017/1/3.
//  Copyright © 2017年 xueyin. All rights reserved.
//

#import "UIBarButtonItem+XYBarButtonItem.h"

@implementation UIBarButtonItem (XYBarButtonItem)


/**
 1.创建只带文字的左边item

 @param title 标题
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)leftItemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    itemButton.frame = CGRectMake(0, 0, 50, 40);
    itemButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [itemButton setTitle:title forState:UIControlStateNormal];
    itemButton.titleLabel.font = [UIFont systemFontOfSize:15.0];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:itemButton];
}



/**
 2.创建只带文字的右边item

 @param title 标题
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)rightItemWithTitle:(NSString *)title target:(id)target action:(SEL)action
{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    itemButton.frame = CGRectMake(0, 0, 50, 40);
    itemButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    [itemButton setTitle:title forState:UIControlStateNormal];
    itemButton.titleLabel.font = [UIFont systemFontOfSize:15.0];
    [itemButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [itemButton setTitleColor:[UIColor colorWithWhite:0.9 alpha:1.0] forState:UIControlStateDisabled];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:itemButton];
}



/**
 3.快速创建一个图标barButtonItem 左边

 @param normalImage 默认图片名
 @param highlightedImage 高亮图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)leftItemWithNormalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target ction:(SEL)action
{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    itemButton.frame = CGRectMake(0, 0, 50, 40);
    itemButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [itemButton setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    [itemButton setImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:itemButton];
}



/**
 4.快速创建一个图标barButtonItem 右边

 @param normalImage 默认图片名
 @param highlightedImage 高亮图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)rightItemWithNormalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target ction:(SEL)action
{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    itemButton.frame = CGRectMake(0, 0, 50, 40);
    itemButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    itemButton.contentEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    [itemButton setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    [itemButton setImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:itemButton];
}

/**
 7.快速创建一个图标barButtonItem 右边
 
 @param normalImage 默认图片名
 @param selectedImage 高亮图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)rightItemWithNormalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage target:(id)target ction:(SEL)action
{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    itemButton.frame = CGRectMake(0, 0, 50, 40);
    itemButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentRight;
    itemButton.contentEdgeInsets = UIEdgeInsetsMake(0, 5, 0, 0);
    [itemButton setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    [itemButton setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:itemButton];
}



/**
 5.快速创建一个带标题的barButtonItem 左边

 @param title 标题
 @param normalImage 默认图片名
 @param highlightedImage 高亮图片名
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title normalImage:(NSString *)normalImage highlightedImage:(NSString *)highlightedImage target:(id)target ction:(SEL)action
{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [itemButton setTitle:title forState:UIControlStateNormal];
    itemButton.frame = CGRectMake(0, 0, 50, 44);
    [itemButton setTitleColor:[UIColor colorWithRed:0.95 green:0.98 blue:1.00 alpha:1.00] forState:UIControlStateNormal];//白色
    [itemButton setTitleColor:[UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00] forState:UIControlStateHighlighted];//偏白
    itemButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    itemButton.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    [itemButton setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    [itemButton setImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:itemButton];
}



/**
 6.快速创建一个带标题的barButtonItem 左边

 @param title 标题
 @param normalImage 默认图片名
 @param selectedImage 选中状态
 @param target 监听方法对象
 @param action 方法选择器
 @return barButtonItem
 */
+ (UIBarButtonItem *)itemWithTitle:(NSString *)title normalImage:(NSString *)normalImage selectedImage:(NSString *)selectedImage target:(id)target ction:(SEL)action
{
    UIButton *itemButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [itemButton setTitle:title forState:UIControlStateNormal];
    itemButton.frame = CGRectMake(0, 0, 50, 44);
    [itemButton setTitleColor:[UIColor colorWithRed:0.95 green:0.98 blue:1.00 alpha:1.00] forState:UIControlStateNormal];//白色
    [itemButton setTitleColor:[UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00] forState:UIControlStateHighlighted];//偏白
    itemButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    itemButton.contentEdgeInsets = UIEdgeInsetsMake(0, -10, 0, 0);
    [itemButton setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    [itemButton setImage:[UIImage imageNamed:selectedImage] forState:UIControlStateSelected];
    [itemButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc]initWithCustomView:itemButton];
}




@end
