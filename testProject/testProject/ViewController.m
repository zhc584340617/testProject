//
//  ViewController.m
//  testProject
//
//  Created by zhangchao on 17/4/6.
//  Copyright © 2017年 zhangchao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *bottomView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 添加一条注释
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:view];
    
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 25, 100, 50);
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"这是什么";
    [view addSubview:label];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"按钮" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(CGRectGetMinX(view.frame),
                              CGRectGetMaxY(view.frame) + 20,
                              CGRectGetWidth(view.frame),
                              30);
    [self.view addSubview:button];
    
    UIView *bottonView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                 CGRectGetMaxY(button.frame) + 20,
                                                                 CGRectGetWidth(self.view.frame),
                                                                 CGRectGetHeight(self.view.frame) - CGRectGetMaxY(button.frame) - 40)];
    bottonView.backgroundColor = [UIColor orangeColor];
    bottonView.hidden = YES;
    [self.view addSubview:bottonView];
    self.bottomView = bottonView;
    
}

- (void)buttonClick:(UIButton *)button
{
    NSLog(@"按钮点击%@", button);
    self.bottomView.hidden = !self.bottomView.hidden;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
