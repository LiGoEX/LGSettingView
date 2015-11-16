# LGSettingView
  * 仅需三句代码即可快速集成设置界面，免去每次开发新应用都要重新布置设置界面的烦恼。
  * Build the Setting View on iOS APP by 3 lines of code.

## 测试环境
  * Xcode 7.1
  * iOS 8.4，9.1（真机测试通过）
  
## 如何使用LGSettingView
  * 1.将LGSettingView文件夹中的所有文件拽入项目中
  * 2.将导入的LGSettingViewController设为设置界面的VC  
  * 3.在ViewDidLoad方法中添加组与行

```
- (void)viewDidLoad {

  //Set1:添加第一组
  LGSettingSection *section = [LGSettingSection initWithHeaderTitle:@"第一组" footerTitle:nil];
  
  //Set2:添加行
  LGSettingItem *item = [LGSettingItem initWithtitle:@""];
  [section addItem:item];
  
  //Set3:保存到groups数组
  [self.sections addObject:section];
  }
  
  
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  if (indexPath.section == 0 && indexPath.row == 1) {
  //添加点击事件
  }
  
```
  
  
##LGSettingSection.h
```
@interface LGSettingSection : NSObject

/** 头部标题 */
@property (strong, nonatomic) NSString * headerTitle;
/** 尾部标题 */
@property (strong, nonatomic) NSString * footerTitle;
/** 行数 */
@property (strong, nonatomic) NSMutableArray * items;
/** 标题 */
@property (strong, nonatomic) NSString * title;

//类方法 设置headerTitle footerTitle
+ (instancetype)initWithHeaderTitle:(NSString *)headerTitle footerTitle:(NSString *)footerTitle;

-(void)addItem:(LGSettingItem*)item;

-(void)addItemWithTitle:(NSString*)title;
//添加带有左图标的行
-(void)addItemWithTitle:(NSString*)title Image:(UIImage*)image;
@end
```
##LGSettingItem.h
```
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

```
##参考

  * 文件夹下的LGSettingViewDemo工程
    
![image](https://github.com/LiGoEX/LGSettingView/blob/master/screenshots/screenshots.png)
