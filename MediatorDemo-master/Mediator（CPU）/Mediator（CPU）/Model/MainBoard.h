//
//  MainBoard.h
//  Mediator（CPU）
//
//  Created by Lol on 2018/2/8.
//  Copyright © 2018年 Lol. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AbsComponent ;
@interface MainBoard : NSObject
- (void)registerComponent:(AbsComponent *)component;
- (void)operationMsg:(NSString *)msg component:(AbsComponent *)component;

@end
