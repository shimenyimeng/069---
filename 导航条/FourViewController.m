//
//  FourViewController.m
//  导航条
//
//  Created by 顾雪飞 on 2017/9/19.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "FourViewController.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"4";
    
    UILabel *lbl = [UILabel new];
    lbl.text = @"有导航条且不支持右滑返回";
    lbl.numberOfLines = 0;
    lbl.frame = CGRectMake(0, 0, 120, 100);
    lbl.center = self.view.center;
    [self.view addSubview:lbl];
    
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
