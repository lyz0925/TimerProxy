//
//  MProxy.m
//  Interview03-定时器
//
//  Created by Happy on 2018/6/19.
//  Copyright © 2018年 Happy. All rights reserved.
//

#import "MProxy.h"

@implementation MProxy

+ (instancetype)proxyWithTarget:(id)target
{
    // NSProxy对象不需要调用init，因为它本来就没有init方法
    MProxy *proxy = [MProxy alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel
{
    return [self.target methodSignatureForSelector:sel];
}

- (void)forwardInvocation:(NSInvocation *)invocation
{
    [invocation invokeWithTarget:self.target];
}
@end
