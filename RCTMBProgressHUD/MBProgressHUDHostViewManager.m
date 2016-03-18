//
//  MBProgressHUDHostViewManager.m
//  RCTMBProgressHUD
//
//  Created by git on 16/3/17.
//  Copyright © 2016年 bigfacecat. All rights reserved.
//

#import "MBProgressHUDHostViewManager.h"
#import "MBProgressHUDHostView.h"

@implementation MBProgressHUDHostViewManager

RCT_EXPORT_MODULE()

- (UIView *)view{
    MBProgressHUDHostView *hudHost = [MBProgressHUDHostView new];
    return hudHost;
}

RCT_EXPORT_VIEW_PROPERTY(title, NSString)

@end
