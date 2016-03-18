//
//  MBProgressHUDHostView.m
//  RCTMBProgressHUD
//
//  Created by git on 16/3/17.
//  Copyright © 2016年 bigfacecat. All rights reserved.
//

#import "MBProgressHUDHostView.h"
#import "UIView+React.h"
#import "MBProgressHUD.h"

@implementation MBProgressHUDHostView

- (void)didMoveToWindow{
    [super didMoveToWindow];
    if (self.window && [self reactViewController]) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:[self reactViewController].view animated:YES];
        hud.labelText = self.title;
    }
}

- (void)willMoveToSuperview:(UIView *)newSuperview{
    [super willMoveToSuperview:newSuperview];
    
    if (self.window && [self reactViewController]) {
        [MBProgressHUD hideHUDForView:[self reactViewController].view animated:YES];
    }
}

@end
