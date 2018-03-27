//
//  VGAComponent.m
//  Mediator（CPU）
//
//  Created by Lol on 2018/2/8.
//  Copyright © 2018年 Lol. All rights reserved.
//

#import "VGAComponent.h"
#import "AsusMainBoard.h"

@implementation VGAComponent

- (void)sendMsg:(NSString *)data
{
    // .....处理完
    [self.mainboard operationMsg:data component:self];
}

- (void)receiveMsg:(NSString *)data
{
    NSLog(@"显卡接受到数据: %@", data);
    // ...... 处理中
    NSLog(@"显卡显示数据成功");
}
@end
