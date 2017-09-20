//
//  NSDictionary+XYDictionary.h
//  MV-IM-App
//
//  Created by 薛银 on 2017/4/19.
//  Copyright © 2017年 xueyin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (XYDictionary)


/**
 判断字典数据是否都有值,key是否为Null或者@""

 @param dictionary 字典
 @return YES都有值, NO,有一个Null,或者@""
 */
+ (BOOL)dictionaryHaveValue:(NSDictionary *)dictionary;











@end
