//
//  QQMainTabViewController.m
//  QQLeftDrawMenu
//
//  Created by 杨丽娟 on 16/3/8.
//
//

#import "QQMainTabViewController.h"
#import "QQMessageViewController.h"
#import "QQNavController.h"

@interface QQMainTabViewController ()
@property(nonatomic, strong)QQMessageViewController *messageVC;
@end

@implementation QQMainTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *titlesString = @[@"消息", @"联系人", @"动态"];
    QQMessageViewController *messgeVc = [[QQMessageViewController alloc]init];
    NSArray *VCArray = @[messgeVc, messgeVc, messgeVc];
    for (int nIndex = 0; nIndex < titlesString.count; nIndex++) {
        QQNavController *nav = [[QQNavController alloc]initWithRootViewController:VCArray[nIndex]];
        QQMessageViewController *vc = VCArray[nIndex];
        vc.tabBarItem.title = titlesString[nIndex];
        [self addChildViewController:nav];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
