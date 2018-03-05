//
//  ZFSignalLineV.h
//  ZFSignal
//
//  Created by 张帆 on 2018/3/5.
//  Copyright © 2018年 张帆. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, ZFSignalLineType) {
    ZFSignalLineTypeGary,
    ZFSignalLineTypeWhite,
};

@interface ZFSignalLineV : UIView
- (instancetype)initWithSignalLineType:(ZFSignalLineType)type;
@end
