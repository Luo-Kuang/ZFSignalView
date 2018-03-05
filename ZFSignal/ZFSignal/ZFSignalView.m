//
//  ZFSignalView.m
//  ZFSignal
//
//  Created by 张帆 on 2018/3/5.
//  Copyright © 2018年 张帆. All rights reserved.
//

#import "ZFSignalView.h"
#import "ZFSignalLineV.h"

@interface ZFSignalView ()
@property (nonatomic, strong) CAShapeLayer *maskLayer;
@end

@implementation ZFSignalView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        CGRect rect = CGRectMake(0, 0, frame.size.width, frame.size.height);
        ZFSignalLineV *lineG = [[ZFSignalLineV alloc] initWithSignalLineType:ZFSignalLineTypeGary];
        [lineG setFrame:rect];
        ZFSignalLineV *lineW = [[ZFSignalLineV alloc] initWithSignalLineType:ZFSignalLineTypeWhite];
        [lineW setFrame:rect];
        
        [self addSubview:lineG];
        [self addSubview:lineW];
        if (_maskLayer == nil) {
            _maskLayer = [CAShapeLayer layer];
            _maskLayer.frame = rect;
            _maskLayer.path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, 0, rect.size.height)].CGPath;
            _maskLayer.fillColor= [UIColor blueColor].CGColor;
            lineW.layer.mask = _maskLayer;
        }
        
    }
    return self;
}

- (void)setSignalStrength:(int)signalStrength {
    if (_signalStrength == signalStrength) {
        return;
    }
    _signalStrength = signalStrength;
    float percent = _signalStrength / 100.0;
    _maskLayer.path = [UIBezierPath bezierPathWithRect:CGRectMake(0, 0, self.frame.size.width * percent, self.frame.size.height)].CGPath;
    
}

@end
