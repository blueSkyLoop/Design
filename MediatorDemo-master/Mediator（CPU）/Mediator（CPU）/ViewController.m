//
//  ViewController.m
//  Mediator（CPU）
//
//  Created by Lol on 2018/2/8.
//  Copyright © 2018年 Lol. All rights reserved.
//

#import "ViewController.h"
#import "CPUComponent.h"
#import "VGAComponent.h"
#import "AsusMainBoard.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CPUComponent *cpu = [CPUComponent new];
    VGAComponent *vga = [VGAComponent new];
    
    AsusMainBoard *asus = [AsusMainBoard new];
    [asus registerComponent:cpu];
    [asus registerComponent:vga];
    
    // 告诉中介者想要做的事
    [cpu sendMsg:@"《历史的天空》(电影)"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
