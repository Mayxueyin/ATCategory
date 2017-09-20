//
//  NSString+XYString.m
//  MV-IM-App
//
//  Created by 薛银 on 2017/4/18.
//  Copyright © 2017年 xueyin. All rights reserved.
//

#import "NSString+XYString.h"

@implementation NSString (XYString)


/**
 字符串是否包含某某一个字段

 @param String 原来的字符串
 @param string 检测包含的字符串
 @return BOOL
 */
+ (BOOL)string:(NSString *)String ContainString:(NSString *)string
{
    NSString *str = String.lowercaseString;
    if ([str rangeOfString:string].location != NSNotFound) {
        return YES;
    }
    return NO;
}

#pragma mark - 时间转化
+ (NSString *)timeIntervalToMMSSFormat:(NSTimeInterval)interval {
    NSInteger ti = (NSInteger)interval;
    NSInteger seconds = ti % 60;
    NSInteger minutes = (ti / 60) % 60;
    NSInteger hours = interval / 3600;
    
    if (hours > 0) {
        return [NSString stringWithFormat:@"%02ld:%02ld:%02ld", (long)hours,(long)minutes, (long)seconds];
    }
    else
    {
        return [NSString stringWithFormat:@"%02ld:%02ld", (long)minutes, (long)seconds];
    }
}


/**
 录音时间格式,去掉01

 @param interval <#interval description#>
 @return 12秒 1:2
 */
+ (NSString *)timeIntervalToVoiceFormat:(NSTimeInterval)interval {
    NSInteger ti = (NSInteger)interval;
    NSInteger seconds = ti % 60;
    NSInteger minutes = (ti / 60) % 60;
    
    if (minutes > 0) {
        return [NSString stringWithFormat:@"%ld:%ld",(long)minutes, (long)seconds];
    }
    else
    {
        return [NSString stringWithFormat:@"%ld",(long)seconds];
    }
}



@end
