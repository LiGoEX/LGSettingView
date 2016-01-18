//
//  LGSettingViewController.m
//  LGSettingViewDemo
//
//  Created by LiGo on 11/16/15.
//  Copyright © 2015 LiGo. All rights reserved.
//
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
    LGSettingSection *section1 = [LGSettingSection initWithHeaderTitle:@"LGSettingView Demo" footerTitle:nil];
    //添加行
    LGSettingItem *item1 = [LGSettingItem initWithtitle:@"Sina:@LiGoEX"];
    item1.image = [UIImage imageNamed:@"me"];
    item1.height = 64;
    [section1 addItem:item1];
    LGSettingItem *item2 = [LGSettingItem initWithtitle:@"Live with passion."];
    item2.type = UITableViewCellAccessoryNone;
    [section1 addItem:item2];
    //保存到groups数组
    [self.groups addObject:section1];
    
    //添加第二组
    LGSettingSection *section2 = [LGSettingSection initWithHeaderTitle:@"" footerTitle:nil];
    //添加行
    [section2 addItemWithTitle:@"相册"];
    [section2 addItemWithTitle:@"相收藏"];
    [section2 addItemWithTitle:@"赞过的"];
    [section2 addItemWithTitle:@"回收站"];
    //保存到groups数组
    [self.groups addObject:section2];
    
    //添加第三组
    LGSettingSection *section3 = [LGSettingSection initWithHeaderTitle:@"" footerTitle:@"© 2016 LiGo"];
    //添加行
    [section3 addItemWithTitle:@"关于我们"];
    //保存到groups数组
    [self.groups addObject:section3];
    
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
    // 设置Cell的标题
    cell.textLabel.text = item.title;
    // 设置Cell左边的图标
    cell.imageView.image = item.image;
    // 设置Cell右边的图标
    cell.accessoryType = item.type;
    
    
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

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    LGSettingSection *section = self.groups[indexPath.section];
    LGSettingItem *item = section.items[indexPath.row];
    return item.height;
}

#pragma mark 点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0 && indexPath.row == 1) {
        //添加点击事件
    }
    NSLog(@"点击了第%ld组,第%ld行",indexPath.section,indexPath.row);
}

/**
 
 */

@end
