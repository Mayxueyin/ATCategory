//
//  Config.h
//  MV-ShopDelivery-0.0.1
//
//  Created by 薛银 on 2017/3/22.
//  Copyright © 2017年 xueyin. All rights reserved.
//  全局配置参数

#ifndef Config_h
#define Config_h

//尺寸位置
#define     xyScreenB   [UIScreen mainScreen].bounds
#define     XYScreenW   [UIScreen mainScreen].bounds.size.width
#define     XYScreenH   [UIScreen mainScreen].bounds.size.height
#define     FX(view)    view.frame.origin.x
#define     FY(view)    view.frame.origin.y
#define     FW(view)    view.frame.size.width
#define     FH(view)    view.frame.size.height
#define     GMY(view)   CGRectGetMaxY(view.frame)
#define     GMX(view)   CGRectGetMaxX(view.frame)
#define     Frame(x,y,width,height)  CGRectMake(x, y, width, height)


//设置 view 圆角和边框
#define XYViewBorderRadius(View, Radius, Width, Color)\
\
[View.layer setCornerRadius:(Radius)];\
[View.layer setMasksToBounds:YES];\
[View.layer setBorderWidth:(Width)];\
[View.layer setBorderColor:[Color CGColor]]


//颜色
#define RGBA(r,g,b,a)               [UIColor colorWithRed:(float)r/255.0f green:(float)g/255.0f blue:(float)b/255.0f alpha:a]
#define ColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
//3.设置随机颜色
#define RandomColor [UIColor colorWithRed:arc4random_uniform(256)/255.0 green:arc4random_uniform(256)/255.0 blue:arc4random_uniform(256)/255.0 alpha:1.0]


//自定义打印格式,带时间,格式:[15:20:01 +806][ViewController.m:33]
//#ifdef DEBUG
#define NSLog(FORMAT, ...) {\
NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];\
[dateFormatter setDateStyle:NSDateFormatterMediumStyle];\
[dateFormatter setTimeStyle:NSDateFormatterShortStyle];\
[dateFormatter setDateFormat:@"HH:mm:ss +SSS"]; \
NSString *str = [dateFormatter stringFromDate:[NSDate date]];\
fprintf(stderr,"[%s][%s:%d]%s\n",[str UTF8String],[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);\
}

//APP 系统常量信息
#define     XYDocumentPath           [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask, YES) firstObject]
#define     XYCaches                 [NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) lastObject]
#define     XYTemp                   NSTemporaryDirectory()

#define     XYStoryboard             [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]
#define     XYInfoDictionary         [[NSBundle mainBundle] infoDictionary]
#define     XYUserDefaults           [NSUserDefaults standardUserDefaults]
#define     XYDefaultCenter          [NSNotificationCenter defaultCenter]
#define     ISMaxIphone5             [[UIScreen mainScreen] bounds].size.width > 320
#define     APPNAME                  [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"]
#define     XYApplication            [UIApplication sharedApplication]
#define     XYUrlScheme              @"mmvvxy"


//弱引用/强引用
#define     XYWeakSelf(type)    __weak typeof(type) weak##type = type;
#define     XYStrongSelf(type)  __strong typeof(type) type = weak##type;

//获取图片资源
#define     XYGetImage(imageName)     [UIImage imageNamed:[NSString stringWithFormat:@"%@",imageName]]
#define     XYGetBigImage(imageName)  [UIImage imageWithContentsOfFile:[[NSBundle mainBundle]pathForResource:imageName ofType:@""]]


//GCD 宏使用方法
//GCD - 一次性执行
#define DISPATCH_ONCE_BLOCK(onceBlock) static dispatch_once_t onceToken; dispatch_once(&onceToken, onceBlock);
//GCD - 在Main线程上运行
#define DISPATCH_MAIN_THREAD(mainQueueBlock) dispatch_async(dispatch_get_main_queue(), mainQueueBlock);

//GCD - 开启异步线程
#define DISPATCH_GLOBAL_QUEUE_DEFAULT(globalQueueBlock) dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), globalQueueBlocl);


#define IOS8 ([[[UIDevice currentDevice] systemVersion] doubleValue] >=8.0 ? YES : NO)


//App ID 和跳转的链接
#define APPID                    @"1258466467"  //五是联通
#define APPID_URL_String         [NSString stringWithFormat:@"https://itunes.apple.com/app/id%@",APPID]
#define APP_UPDATE_URL_KEY       @"App_update_url"      //App检查更新


#endif /* Config_h */
