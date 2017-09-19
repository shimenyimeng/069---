//
//  SecondViewController.m
//  导航条
//
//  Created by 顾雪飞 on 2017/9/19.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "SecondViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor yellowColor];
    self.title = @"two";
//    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn1.backgroundColor = [UIColor blueColor];
//    btn1.frame = CGRectMake(50, 50, 50, 40);
//    [btn1 setTitle:@"ddd" forState:UIControlStateNormal];
//    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn1];
//    
//    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
//    btn2.backgroundColor = [UIColor blueColor];
//    btn2.frame = CGRectMake(50, 150, 50, 40);
//    [btn2 setTitle:@"ggg" forState:UIControlStateNormal];
//    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
//    [self.view addSubview:btn2];
    
    UILabel *lbl = [UILabel new];
    lbl.text = @"有导航条且支持右滑返回";
    lbl.numberOfLines = 0;
    lbl.frame = CGRectMake(0, 0, 120, 100);
    lbl.center = self.view.center;
    [self.view addSubview:lbl];
}

- (void)btnClick:(UIButton *)btn {
    if ([btn.titleLabel.text isEqualToString:@"ddd"]) {
        ThreeViewController *threeVc = [ThreeViewController new];
        threeVc.hiddenNavi = NO;
        [self.navigationController pushViewController:threeVc animated:YES];
    } else {
        FourViewController *fourVc = [FourViewController new];
        fourVc.hiddenNavi = NO;
        [self.navigationController pushViewController:fourVc animated:YES];
    }
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
