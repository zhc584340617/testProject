//
//  ViewController.m
//  testProject
//
//  Created by zhangchao on 17/4/6.
//  Copyright © 2017年 zhangchao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 添加一条注释
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor greenColor];
    [self.view addSubview:view];
    
    
    UILabel *label = [[UILabel alloc] init];
    label.frame = CGRectMake(0, 25, 100, 50);
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"这是什么";
    [view addSubview:label];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
