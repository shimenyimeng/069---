//
//  ViewController.m
//  导航条
//
//  Created by 顾雪飞 on 2017/9/19.
//  Copyright © 2017年 顾雪飞. All rights reserved.
// 需求：1无导航条（只有1状态栏为白色），2有导航条且支持右滑返回，3无导航条且支持右滑返回，4有导航条且不支持右滑返回，5无导航条且不支持右滑返回（无导航条设置hiddenNavi属性为YES，有导航条不用管，不能右滑返回在viewWillAppear和viewWillDisappear中设置，能右滑如果有导航条就不用管，如果没有导航条则设置在viewDidLoad中设置返回手势的代理再让手势可用）

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "FiveViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.title = @"one";
}

#pragma mark - 视图将要显示时，修改状态栏颜色
- (void)viewWillAppear:(BOOL)animated {
    [self.navigationController setNavigationBarHidden:YES animated:YES];
    // 与 - preferredStatusBarStyle方法只能一个生效
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
}

#pragma mark - 在视图消失后，把状态栏改为默认的颜色
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleDefault;
}
- (IBAction)jump2:(id)sender {
    SecondViewController *secondVc = [SecondViewController new];
    secondVc.supportRightSliderReturn = YES;
    [self.navigationController pushViewController:secondVc animated:YES];
}

- (IBAction)jump3:(id)sender {
    ThreeViewController *threeVc = [ThreeViewController new];
    threeVc.hiddenNavi = YES;
    threeVc.supportRightSliderReturn = YES;
    [self.navigationController pushViewController:threeVc animated:YES];
}
- (IBAction)jump4:(id)sender {
    FourViewController *fourVc = [FourViewController new];
    fourVc.supportRightSliderReturn = NO;
    [self.navigationController pushViewController:fourVc animated:YES];
}
- (IBAction)jump5:(id)sender {
    FiveViewController *fiveVc = [FiveViewController new];
    fiveVc.hiddenNavi = YES;
    fiveVc.supportRightSliderReturn = NO;
    [self.navigationController pushViewController:fiveVc animated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
}
// 与 - preferredStatusBarStyle方法只能一个生效（info.plist设置 Supported interface orientations为NO，则此方法失效）
- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}


@end
