# LGSettingView
  * 仅需三句代码即可快速集成设置界面，免去每次开发新应用都要重新布置设置界面的烦恼。
  * Build the Setting View on iOS APP by 3 lines of code.

## 测试环境
  * Xcode 7.1
  * iOS 8.4，9.1（真机测试通过）
  
## 如何使用LGSettingView
  * 1.将LGSettingView文件夹中的所有文件拽入项目中
  * 2.将导入的LGSettingViewController设为设置界面的VC  
  
  ` - (void)viewDidLoad {  <br>
  //Set1:添加第一组 \<br>
  LGSettingSection *section1 = [LGSettingSection initWithHeaderTitle:@"第一组" footerTitle:nil];<br>  
  //Set2:添加行<br>
    LGSettingItem *item1 = [LGSettingItem initWithtitle:@"Sina:@LiGoEX"];<br>
    item1.image = [UIImage imageNamed:@"moteki"];<br>
    item1.height = 80;<br>
    [section1 addItem:item1];<br>
    LGSettingItem *item2 = [LGSettingItem initWithtitle: @"Live with passion."];<br>
    item2.type = UITableViewCellAccessoryCheckmark;<br>
    [section1 addItem:item2];<br>
    //Set3:保存到groups数组<br>
    [self.sections addObject:section1];<br>
  }`<br>
