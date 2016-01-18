//
//  LGSettingSection.m
//  LGSettingViewDemo
//
//  Created by LiGo on 11/16/15.
//  Copyright © 2015 LiGo. All rights reserved.
//

#import "LGSettingSection.h"


@implementation LGSettingSection

+ (instancetype)initWithHeaderTitle:(NSString *)headerTitle footerTitle:(NSString *)footerTitle {
    
    LGSettingSection *section = [[LGSettingSection alloc]init];
    section.headerTitle = headerTitle;
    section.footerTitle = footerTitle;
    return section;
}
-(void)addItem:(LGSettingItem*)item{
    if (!_items) {
        _items = [NSMutableArray array];
}
    [_items addObject:item];

}

-(void)addItemWithTitle:(NSString*)title {
    
    if (!_items) {
        _items = [NSMutableArray array];
 
    }
    LGSettingItem *item = [LGSettingItem initWithtitle:title];
    [_items addObject:item];
}

-(void)addItemWithTitle:(NSString*)title Image:(UIImage*)image {
    if (!_items) {
        _items = [NSMutableArray array];
        
    }
    LGSettingItem *item = [LGSettingItem initWithtitle:title];
    item.image = image;
    [_items addObject:item];
}
@end
