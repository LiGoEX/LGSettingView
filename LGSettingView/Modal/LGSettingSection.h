//
//  LGSettingSection.h
//  LGSettingViewDemo
//
//  Created by LiGo on 11/16/15.
//  Copyright © 2015 LiGo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LGSettingItem.h"

@interface LGSettingSection : NSObject

/** 头部标题 */
@property (strong, nonatomic) NSString * headerTitle;
/** 尾部标题 */
@property (strong, nonatomic) NSString * footerTitle;
/** 行数 */
@property (strong, nonatomic) NSMutableArray * items;
/** 标题 */
@property (strong, nonatomic) NSString * title;

+ (instancetype)initWithHeaderTitle:(NSString *)headerTitle footerTitle:(NSString *)footerTitle;
-(void)addItem:(LGSettingItem*)item;
-(void)addItemWithTitle:(NSString*)title;
@end



