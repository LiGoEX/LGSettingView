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
  item.image = [UIImage imageNamed:@""];
  item.height = 80;
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
