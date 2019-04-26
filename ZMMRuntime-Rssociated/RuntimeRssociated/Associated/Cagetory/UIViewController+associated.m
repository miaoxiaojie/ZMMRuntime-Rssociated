//
//  UIViewController+associated.m
//  RuntimeRssociated
//
//  Created by miao on 2019/4/3.
//  Copyright © 2019年 miao. All rights reserved.
//

#import "UIViewController+associated.h"
#import <objc/runtime.h>
//是否显示TabBar属性
static void *kCMBCAssociatedShowTabBaarObjectKey = &kCMBCAssociatedShowTabBaarObjectKey;

@implementation UIViewController (associated)

#pragma mark - 设置是否显示tabBar
- (NSNumber *)showCustomTabBar_cmbc
{
  
    id showTabBar = objc_getAssociatedObject(self, kCMBCAssociatedShowTabBaarObjectKey);
    if (showTabBar == nil)
    {
        objc_setAssociatedObject(self,kCMBCAssociatedShowTabBaarObjectKey,[NSNumber numberWithBool:YES],OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return objc_getAssociatedObject(self, kCMBCAssociatedShowTabBaarObjectKey);
}

- (void)setShowCustomTabBar_cmbc:(NSNumber *)showCustomTabBar_cmbc
{
    objc_setAssociatedObject(self, kCMBCAssociatedShowTabBaarObjectKey, showCustomTabBar_cmbc, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
