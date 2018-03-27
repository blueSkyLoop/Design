//
//  CPUComponent.m
//  Mediator（CPU）
//
//  Created by Lol on 2018/2/8.
//  Copyright © 2018年 Lol. All rights reserved.
//

#import "CPUComponent.h"

#import "AsusMainBoard.h"

@implementation CPUComponent

- (void)sendMsg:(NSString *)data
{
    // .....处理完
    [self.mainboard operationMsg:data component:self];
}

- (void)receiveMsg:(NSString *)data
{
    NSLog(@"cpu接受到数据: %@", data);
    // ...... 处理中
    NSLog(@"cpu计算数据完成");
}
@end
