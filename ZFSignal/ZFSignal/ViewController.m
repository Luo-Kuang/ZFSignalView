//
//  ViewController.m
//  ZFSignal
//
//  Created by 张帆 on 2018/3/5.
//  Copyright © 2018年 张帆. All rights reserved.
//

#import "ViewController.h"
#import "ZFSignalView.h"

@interface ViewController ()
@property (nonatomic, strong) ZFSignalView *signalV;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _signalV = [[ZFSignalView alloc] initWithFrame:CGRectMake(100, 100, 50, 50)];
    [self.view addSubview:_signalV];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)move:(UISlider *)sender {
    [_signalV setSignalStrength:sender.value];
}

@end
