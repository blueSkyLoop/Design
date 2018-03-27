//
//  AbsComponent.h
//  Mediator（CPU）
//
//  Created by Lol on 2018/2/8.
//  Copyright © 2018年 Lol. All rights reserved.
//
// 抽象的colleague类
#import <Foundation/Foundation.h>
@class MainBoard;
@interface AbsComponent : NSObject
@property (nonatomic, weak) MainBoard *mainboard;

- (void)sendMsg:(NSString *)data;
- (void)receiveMsg:(NSString *)data;
@end
