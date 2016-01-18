//
//  LGSettingItem.m
//  LGSettingViewDemo
//
//  Created by LiGo on 11/16/15.
//  Copyright © 2015 LiGo. All rights reserved.
//

#import "LGSettingItem.h"
#import "LGSettingSection.h"

@implementation LGSettingItem

+ (instancetype)initWithtitle:(NSString *)title {
    
    LGSettingItem *item = [[LGSettingItem alloc]init];
    item.title = title;
    item.height = 44;
    item.type = UITableViewCellAccessoryDisclosureIndicator;
    return item;
}

@end
