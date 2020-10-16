//
//  MProxyObject.h
//  Interview03-定时器
//
//  Created by Happy on 2018/6/19.
//  Copyright © 2018年 Happy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MProxyObject : NSObject
+ (instancetype)proxyWithTarget:(id)target;
@property (weak, nonatomic) id target;
@end
