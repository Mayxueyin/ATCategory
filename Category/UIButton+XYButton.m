//
//  UIButton+XYButton.m
//  MVShop
//
//  Created by 薛银 on 2016/12/28.
//  Copyright © 2016年 xueyin. All rights reserved.
//

#import "UIButton+XYButton.h"
#import "JXButton.h"
#import <objc/runtime.h>

static NSString *button_block_key;//用分类方法创建的button，关联对象的key

@implementation UIButton (XYButton)


//网页加载失败时显示的按钮
+ (UIButton *)reoladWebviewBtnWithFrame:(CGRect)frame target:(id)target action:(SEL)action{
    UIButton *btn = [[UIButton alloc]initWithFrame:frame];
    
    btn.backgroundColor = [UIColor clearColor];
    btn.titleLabel.numberOfLines = 2;
    [btn setTitle:@"加载失败\n请点击刷新" forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:15.0];
    [btn setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
//    btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//使图片和文字水平居中显示
    
    [btn setImage:[UIImage imageNamed:@"loadFailed"] forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"loadFailedHL"] forState:UIControlStateHighlighted];
    
    
//    [btn setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0,0.0, -btn.titleLabel.bounds.size.width)];//图片距离右边框距离减少图片的宽度，其它不边
    CGFloat imageH = (frame.size.height - 64)/2;
    CGFloat imageW = (frame.size.width - 64)/2;
    [btn setImageEdgeInsets:UIEdgeInsetsMake(imageH - 100, imageW,imageH, imageW)];
    [btn setTitleEdgeInsets:UIEdgeInsetsMake(btn.imageView.frame.size.height - 40,-btn.imageView.frame.size.width, 0.0,0.0)];//文字距离上边框的距离增加imageView的高度，距离左边框减少imageView的宽度，距离下边框和右边框距离不变
    btn.titleLabel.textAlignment = NSTextAlignmentCenter;
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return btn;
}



/**
 1.创建Button只有标题

 @param title 标题
 @param target 事件
 @return UIButton
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title target:(buttonActionBlock)target
{
    return [self createButtonWithTitle:title normolImage:nil hightImage:nil selectImage:nil textColor:nil BackgroundColor:nil textFont:nil target:target];
}


/**
 2.创建Button只有一张图片
 
 @param normolImage 正常状态下得图片
 @param target 事件
 @return UIButton
 */
+ (UIButton *)createButtonWithNormolImage:(NSString *)normolImage target:(buttonActionBlock)target
{
    return [self createButtonWithTitle:nil normolImage:normolImage hightImage:nil selectImage:nil textColor:nil BackgroundColor:nil textFont:nil target:target];
}


/**
 3.创建Button有标题,背景色,尺寸

 @param title 标题
 @param textColor 标题颜色
 @param color 背景颜色
 @param frame 位置尺寸
 @param target 事件
 @return UIButton
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title titleColor:(UIColor *)textColor BackgroundColor:(UIColor *)color frame:(CGRect)frame target:(buttonActionBlock)target
{
    UIButton *btn = [self createButtonWithTitle:title normolImage:nil hightImage:nil selectImage:nil textColor:textColor BackgroundColor:color textFont:nil target:target];
    btn.frame = frame;
    return btn;
}


/**
 4.创建Button有:标题,正常图片,高亮图片

 @param title <#title description#>
 @param normolImage <#normolImage description#>
 @param hightImage <#hightImage description#>
 @param target <#target description#>
 @return <#return value description#>
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title normolImage:(NSString *)normolImage hightImage:(NSString *)hightImage target:(buttonActionBlock)target
{
    return [self createButtonWithTitle:title normolImage:normolImage hightImage:hightImage selectImage:nil target:target];
}


/**
 5.创建Button有:标题,正常图片,选中图片

 @param title <#title description#>
 @param normolImage <#normolImage description#>
 @param selectImage <#selectImage description#>
 @param target <#target description#>
 @return <#return value description#>
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title normolImage:(NSString *)normolImage selectImage:(NSString *)selectImage target:(buttonActionBlock)target
{
    return [self createButtonWithTitle:title normolImage:normolImage hightImage:nil selectImage:selectImage target:target];
}


/**
 6.创建Button有:标题,正常图片,高亮图片,选中图片

 @param title 标题
 @param normolImage 正常图片
 @param hightImage 高亮图片
 @param selectImage 选中图片
 @param target <#target description#>
 @return <#return value description#>
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title normolImage:(NSString *)normolImage hightImage:(NSString *)hightImage selectImage:(NSString *)selectImage target:(buttonActionBlock)target
{
    return [self createButtonWithTitle:title normolImage:normolImage hightImage:hightImage selectImage:selectImage textColor:nil BackgroundColor:nil textFont:nil target:target];
}


/**
 7.创建Button有:正常图片,选中图片

 @param normolImage <#normolImage description#>
 @param selectImage <#selectImage description#>
 @param target <#target description#>
 @return <#return value description#>
 */
+ (UIButton *)createButtonWithNormolImage:(NSString *)normolImage selectImage:(NSString *)selectImage target:(buttonActionBlock)target
{
    return [self createButtonWithTitle:nil normolImage:normolImage hightImage:nil selectImage:selectImage textColor:nil BackgroundColor:nil textFont:nil target:target];
}

/**
 8.封装创建UIButton的所有属性

 @param title 标题
 @param normolImage 正常状态下图片
 @param hightImage 高亮图片
 @param selectImage 选中的图片
 @param textColor 字体颜色
 @param backgroundColor 背景颜色
 @param font 字体大小
 @param target 点击时间
 @return UIButtton
 */
+ (UIButton *)createButtonWithTitle:(NSString *)title normolImage:(NSString *)normolImage hightImage:(NSString *)hightImage selectImage:(NSString *)selectImage textColor:(UIColor *)textColor BackgroundColor:(UIColor *)backgroundColor textFont:(UIFont *)font target:(buttonActionBlock)target
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:title forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:normolImage] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    [button setImage:[UIImage imageNamed:hightImage] forState:UIControlStateSelected];
    [button setBackgroundColor:backgroundColor];
    [button setTitleColor:textColor forState:UIControlStateNormal];
    
    if (!font) {
        [button.titleLabel setFont:[UIFont systemFontOfSize:15.0]];
    }
    else
    {
        [button.titleLabel setFont:font];
    }
    
    [button addTarget:button action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    objc_setAssociatedObject (button , &button_block_key , target, OBJC_ASSOCIATION_COPY_NONATOMIC );
    
    return button;
}


/**
 button响应事件

 @param sender UIButton
 */
- (void)btnClick:(UIButton *)sender
{
    buttonActionBlock block =  (buttonActionBlock)objc_getAssociatedObject(sender, &button_block_key);
    if (block) {
        block(sender);
    }
}




@end
