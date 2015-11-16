//
//  LGSettingViewController.m
//  LGSettingViewDemo
//
//  Created by LiGo on 11/16/15.
//  Copyright © 2015 LiGo. All rights reserved.
//

#import "LGSettingViewController.h"
#import "LGSettingItem.h"
#import "LGSettingSection.h"

@interface LGSettingViewController ()
@property (strong, nonatomic) NSMutableArray * groups;
@end

@implementation LGSettingViewController

/**
 数组懒加载
 */
- (NSMutableArray *)groups
{
    if (!_groups) {
        _groups = [NSMutableArray array];
    }
    return _groups;
}

- (instancetype)init{
    // 设置样式
    return [self initWithStyle:UITableViewStyleGrouped];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //添加第一组
    LGSettingSection *section1 = [LGSettingSection initWithHeaderTitle:@"第一组" footerTitle:nil];
    //添加行
    [section1 addItemWithTitle:@"谢谢"];
    [section1 addItemWithTitle:@"关于"];
    //保存到groups数组
    [self.groups addObject:section1];
    
    //添加第二组
    LGSettingSection *section2 = [LGSettingSection initWithHeaderTitle:@"第二组" footerTitle:nil];
    LGSettingItem *item1 = [LGSettingItem initWithtitle:@"关于我们"];
    [section2 addItem:item1];
    [self.groups addObject:section2];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

/**
 设置组数
 */
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groups.count;
}
/**
 设置行数
 */
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    LGSettingSection *group = self.groups[section];
    return group.items.count;
}

/**
 设置每行内容
 */
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    LGSettingSection *section = self.groups[indexPath.section];
    LGSettingItem *item = section.items[indexPath.row];
    cell.textLabel.text = item.title;
    
    // 设置Cell右边的小箭头
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    return cell;
}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    LGSettingSection *group = self.groups[section];
    return group.headerTitle;
}
-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    LGSettingSection *group = self.groups[section];
    return group.footerTitle;
}

/**
 
 */

@end
