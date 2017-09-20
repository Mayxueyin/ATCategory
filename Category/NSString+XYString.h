//
//  NSString+XYString.h
//  MV-IM-App
//
//  Created by 薛银 on 2017/4/18.
//  Copyright © 2017年 xueyin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (XYString)

/**
 字符串是否包含某某一个字段
 
 @param String 原来的字符串
 @param string 检测包含的字符串
 @return BOOL
 */
+ (BOOL)string:(NSString *)String ContainString:(NSString *)string;


/**
 秒数转格式

 @param interval 秒
 @return NSString
 */
+ (NSString *)timeIntervalToMMSSFormat:(NSTimeInterval)interval;


/**
 录音时间格式,去掉01
 
 @param interval <#interval description#>
 @return <#return value description#>
 */
+ (NSString *)timeIntervalToVoiceFormat:(NSTimeInterval)interval;

@end
