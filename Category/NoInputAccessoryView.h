//
//  NoInputAccessoryView.h
//  MV-IM-App
//
//  Created by 薛银 on 2017/5/2.
//  Copyright © 2017年 xueyin. All rights reserved.
//  WKWebView键盘工具栏消除

#import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>
#import <objc/runtime.h>

@interface NoInputAccessoryView : NSObject
- (void)removeInputAccessoryViewFromWKWebView:(WKWebView *)webView;
@end
