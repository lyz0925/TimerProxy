//
//  ViewController.m
//  Interview03-定时器
//
//  Created by Happy on 2018/6/19.
//  Copyright © 2018年 Happy. All rights reserved.
//

#import "ViewController.h"
#import "MProxy.h"
#import "MProxyObject.h"

@interface ViewController ()
@property (strong, nonatomic) NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    /*
     MProxy 相比于MProxyObject的优势在于：
     MProxy 是直接用于消息转发，当进来一个方法时，会判断本来会有有实现该方法；如果没有就是直接调用消息转发机制；
     但是MProxyObject，会经过消息查找，再判断是否有方法的动态解析；最后在进入消息转发流程；
     */
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[MProxy proxyWithTarget:self] selector:@selector(timerTest) userInfo:nil repeats:YES];
}

- (void)timerTest
{
    NSLog(@"%s", __func__);
}

- (void)dealloc
{
    NSLog(@"%s", __func__);
    [self.timer invalidate];
}

@end
