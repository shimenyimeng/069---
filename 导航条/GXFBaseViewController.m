//
//  GXFBaseViewController.m
//  导航条
//
//  Created by 顾雪飞 on 2017/9/19.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFBaseViewController.h"

@interface GXFBaseViewController ()

@end

@implementation GXFBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

// 视图将要出现时，根据属性设置有无导航条、是否支持右滑返回的功能
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if (self.hiddenNavi) {
        [self.navigationController setNavigationBarHidden:YES animated:YES];
        if (self.supportRightSliderReturn) { // 隐藏了导航条，但是想右滑返回
            self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
            self.navigationController.interactivePopGestureRecognizer.enabled = YES;
        } else { // 隐藏了导航条，又不想右滑返回
            if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
                if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
                    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
                }
            }
        }
    } else {
        [self.navigationController setNavigationBarHidden:NO animated:YES];
        if (self.supportRightSliderReturn) { // 有导航条，又想支持右滑返回，不用管
            NSLog(@"dddd");
        } else { // 有导航条，但不想支持右滑返回
            if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
                if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
                    self.navigationController.interactivePopGestureRecognizer.enabled = NO;
                }
            }
        }
    }
}

// 视图将要消失时让手势还原为可用
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    if (!self.supportRightSliderReturn) {
        if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
            if ([self.navigationController respondsToSelector:@selector(interactivePopGestureRecognizer)]) {
                self.navigationController.interactivePopGestureRecognizer.enabled = YES;
            }
        }
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
