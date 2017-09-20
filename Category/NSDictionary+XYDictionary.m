//
//  NSDictionary+XYDictionary.m
//  MV-IM-App
//
//  Created by 薛银 on 2017/4/19.
//  Copyright © 2017年 xueyin. All rights reserved.
//

#import "NSDictionary+XYDictionary.h"

@implementation NSDictionary (XYDictionary)


/**
 判断字典数据是否都有值

 @param dictionary 字典数据
 @return YES:有值,NO:没有值,有空值
 */
+ (BOOL)dictionaryHaveValue:(NSDictionary *)dictionary
{
    for (NSString *key in dictionary.allKeys) {
        if ([[dictionary objectForKey:key] isEqual:[NSNull null]]) {
            return NO;
            //[dictionary setValue:@"" forKey:key];
        }
        
        if ([[dictionary objectForKey:key] isEqual:[NSString class]]) {
            if ([[dictionary objectForKey:key] isEqualToString:@""]) {
                return NO;
            }
            //[dictionary setValue:@"" forKey:key];
        }
        
        if ([[dictionary objectForKey:key] isEqual:[NSNumber class]]) {
            NSLog(@"字典数据有Number");
            //[dictionary setValue:@"" forKey:key];
        }
    }
    return YES;
}






@end
