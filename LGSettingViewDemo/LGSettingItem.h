//
//  LGSettingItem.h
//  LGSettingViewDemo
//
//  Created by LiGo on 11/16/15.
//  Copyright © 2015 LiGo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LGSettingItem : NSObject


/** 标题 */
@property (strong, nonatomic) NSString * title;

/** 设置标题值 类方法 */
+ (instancetype)initWithtitle:(NSString *)title;

@end

