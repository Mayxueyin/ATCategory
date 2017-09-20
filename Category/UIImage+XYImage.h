//
//  UIImage+XYImage.h
//  MV-IM-App
//
//  Created by 薛银 on 2017/4/11.
//  Copyright © 2017年 xueyin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (XYImage)
//根据色值生成图片
+ (UIImage *)imageWithColor:(UIColor*)color;


/**
 *从图片中按指定的位置大小截取图片的一部分
 * UIImage image 原始的图片
 * CGRect rect 要截取的区域
 */
+(UIImage *)imageFromImage:(UIImage *)image inRect:(CGRect)rect;

/**
 *将图片缩放到指定的CGSize大小
 * UIImage image 原始的图片
 * CGSize size 要缩放到的大小
 */
+(UIImage*)image:(UIImage *)image scaleToSize:(CGSize)size;


/**
 *  压缩图片到指定文件大小
 *
 *  @param image 目标图片
 *  @param size  目标大小（最大值）
 *
 *  @return 返回的图片文件
 */
+ (NSData *)compressOriginalImage:(UIImage *)image toMaxDataSizeKBytes:(CGFloat)size;

@end
