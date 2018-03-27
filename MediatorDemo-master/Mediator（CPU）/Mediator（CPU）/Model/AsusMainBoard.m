//
//  AsusMainBoard.m
//  Mediator（CPU）
//
//  Created by Lol on 2018/2/8.
//  Copyright © 2018年 Lol. All rights reserved.
//

#import "AsusMainBoard.h"
#import "CPUComponent.h"
#import "VGAComponent.h"

@interface AsusMainBoard ()

@property (nonatomic, strong) CPUComponent *cpu;
@property (nonatomic, strong) VGAComponent *vga;

@end

@implementation AsusMainBoard

- (void)registerComponent:(AbsComponent *)component
{
    if ([component isKindOfClass:[CPUComponent class]]) {
        self.cpu = (CPUComponent *)component;
        component.mainboard = self;
    } else if ([component isKindOfClass:[VGAComponent class]]) {
        self.vga = (VGAComponent *)component;
        component.mainboard = self;
    }
}

// 让中介者处理逻辑
- (void)operationMsg:(NSString *)msg component:(AbsComponent *)component;
{
    if ([component isKindOfClass:[CPUComponent class]]) {
        [self.vga receiveMsg:msg];
    }
    // else if...
}
@end
