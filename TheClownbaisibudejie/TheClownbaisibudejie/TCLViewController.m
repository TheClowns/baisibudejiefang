//
//  TCLViewController.m
//  TheClownbaisibudejie
//
//  Created by 这是C先生 on 2017/2/6.
//  Copyright © 2017年 这是C先生. All rights reserved.
//

#import "TCLViewController.h"

@interface TCLViewController ()

@end

@implementation TCLViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *vc01 = [[UIViewController alloc]init];
    vc01.tabBarItem.title = @"精华";
    vc01.tabBarItem.image = [UIImage imageNamed:@"tabBar_essence_icon"];
    vc01.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_essence_click_icon"];
    vc01.view.backgroundColor = [UIColor redColor];
    NSMutableDictionary *attr = [NSMutableDictionary dictionary];
    attr[NSForegroundColorAttributeName] = [UIColor grayColor];
    [vc01.tabBarItem setTitleTextAttributes:attr forState:UIControlStateNormal];
    attr[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    [vc01.tabBarItem setTitleTextAttributes:attr forState:UIControlStateSelected];
    [self addChildViewController:vc01];
    
    UIViewController *vc02 = [[UIViewController alloc]init];
    vc02.tabBarItem.title = @"新帖";
    vc02.tabBarItem.image = [UIImage imageNamed:@"tabBar_new_icon"];
    vc02.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_new_click_icon"];
    vc02.view.backgroundColor = [UIColor greenColor];
    [vc02.tabBarItem setBadgeTextAttributes:attr forState:UIControlStateNormal];
    [vc02.tabBarItem setBadgeTextAttributes:attr forState:UIControlStateSelected];
    [self addChildViewController:vc02];
    
    
    UIViewController *vc03 = [[UIViewController alloc]init];
    vc03.tabBarItem.title = @"关注";
    vc03.tabBarItem.image = [UIImage imageNamed:@"tabBar_friendTrends_icon"];
    vc03.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_friendTrends_click_icon"];
    vc03.view.backgroundColor = [UIColor blueColor];
    [vc03.tabBarItem setBadgeTextAttributes:attr forState:UIControlStateNormal];
    [vc03.tabBarItem setBadgeTextAttributes:attr forState:UIControlStateSelected];
    [self addChildViewController:vc03];
    
    UIViewController *vc04 = [[UIViewController alloc]init];
    vc04.tabBarItem.title = @"我";
    vc04.tabBarItem.image = [UIImage imageNamed:@"tabBar_me_icon"];
    vc04.tabBarItem.selectedImage = [UIImage imageNamed:@"tabBar_me_click_icon"];
    vc04.view.backgroundColor = [UIColor yellowColor];
    [vc04.tabBarItem setBadgeTextAttributes:attr forState:UIControlStateNormal];
    [vc04.tabBarItem setBadgeTextAttributes:attr forState:UIControlStateSelected];
    [self addChildViewController:vc04];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
