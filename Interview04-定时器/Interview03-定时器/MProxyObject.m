//
//  MProxyObject.m
//  Interview03-定时器
//
//  Created by Happy on 2018/6/19.
//  Copyright © 2018年 Happy. All rights reserved.
//

#import "MProxyObject.h"

@implementation MProxyObject

+ (instancetype)proxyWithTarget:(id)target
{
    MProxyObject *proxy = [[MProxyObject alloc] init];
    proxy.target = target;
    return proxy;
}

- (id)forwardingTargetForSelector:(SEL)aSelector
{
    return self.target;
}

@end
