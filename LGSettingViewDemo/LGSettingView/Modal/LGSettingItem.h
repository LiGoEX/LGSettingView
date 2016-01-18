//
//  LGSettingItem.h
//  LGSettingViewDemo
//
//  Created by LiGo on 11/16/15.
//  Copyright © 2015 LiGo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LGSettingItem : NSObject


/** 标题 */
@property (strong, nonatomic) NSString * title;
/** 左图标 */
@property (strong, nonatomic)  UIImage* image;
/** 行高度 */
@property (nonatomic) CGFloat height;
/** 右图标样式 */
@property (nonatomic) UITableViewCellAccessoryType type;

/** 设置标题值 类方法 */
+ (instancetype)initWithtitle:(NSString *)title;
@end

