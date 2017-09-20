//
//  UILabel+XYChangeLineSpace.h
//  MV-ShopDelivery-0.0.1
//
//  Created by 薛银 on 2017/1/7.
//  Copyright © 2017年 xueyin. All rights reserved.
//

#import <UIKit/UIKit.h>

//UILabel具有行间距
@interface UILabel (XYChangeLineSpace)
/**
 *  改变行间距
 */
+ (void)changeLineSpaceForLabel:(UILabel *)label WithSpace:(float)space;

/**
 *  改变字间距
 */
+ (void)changeWordSpaceForLabel:(UILabel *)label WithSpace:(float)space;

/**
 *  改变行间距和字间距
 */
+ (void)changeSpaceForLabel:(UILabel *)label withLineSpace:(float)lineSpace WordSpace:(float)wordSpace;
@end
