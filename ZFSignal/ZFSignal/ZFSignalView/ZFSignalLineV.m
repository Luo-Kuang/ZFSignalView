//
//  ZFSignalLineV.m
//  ZFSignal
//
//  Created by 张帆 on 2018/3/5.
//  Copyright © 2018年 张帆. All rights reserved.
//

#import "ZFSignalLineV.h"

@interface ZFSignalLineV ()
@property (nonatomic, assign) ZFSignalLineType type;
@end

@implementation ZFSignalLineV
- (instancetype)initWithSignalLineType:(ZFSignalLineType)type {
    if (self == [super init]) {
        _type = type;
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    if (_type == ZFSignalLineTypeGary) {
        
        [[UIColor grayColor] set];
    } else if (_type == ZFSignalLineTypeWhite) {
        
        [[UIColor whiteColor] set];
    }
    CGFloat margin = 2;
    CGFloat lineW = 2;
    CGFloat maxY = 16;
    CGFloat minH = 2;
    CGFloat proportion = 3.0f;
    int signalCount = 5;
    for (int i = 0; i < signalCount; i ++) {
        CGFloat lineH = i * proportion + minH;
        UIBezierPath *line = [UIBezierPath bezierPathWithRect:CGRectMake((lineW + margin) * i, maxY - lineH, lineW, lineH)];
        [line fill];
    }
}


@end
