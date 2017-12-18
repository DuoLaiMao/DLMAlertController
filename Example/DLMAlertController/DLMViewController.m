//
//  DLMViewController.m
//  DLMAlertController
//
//  Created by yangjian on 12/06/2017.
//  Copyright (c) 2017 yangjian. All rights reserved.
//

#import "DLMViewController.h"
#import <Masonry/Masonry.h>
#import <DLMAlertController/DLMAlertController.h>
#import <DLMKit/DLMKit.h>

@interface DLMViewController ()

@end

@implementation DLMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn1 = [self generalMakeButton];
    [btn1 setTitle:@"弹出标题和消息" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(alertWithTitleAndMessage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    UIButton *btn2 = [self generalMakeButton];
    [btn2 setTitle:@"弹出自定义视图" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(alertWithCustomerView) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    UIButton *btn3 = [self generalMakeButton];
    [btn3 setTitle:@"弹出自定义视图控制器" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(alertWithCustomerViewController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn3];
    
    UIButton *btn4 = [self generalMakeButton];
    [btn4 setTitle:@"弹出系统标题和消息" forState:UIControlStateNormal];
    [btn4 addTarget:self action:@selector(alertWithUIAlertController) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn4];
    
    [btn1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(20);
        make.right.offset(-20);
        make.top.offset(120);
        make.height.mas_equalTo(44);
    }];
    
    [btn2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(20);
        make.right.offset(-20);
        make.top.offset(184);
        make.height.mas_equalTo(44);
    }];
    
    [btn3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(20);
        make.right.offset(-20);
        make.top.offset(248);
        make.height.mas_equalTo(44);
    }];
    
    [btn4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.offset(20);
        make.right.offset(-20);
        make.top.offset(312);
        make.height.mas_equalTo(44);
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIButton *)generalMakeButton
{
    UIButton * button = [[UIButton alloc] init];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    button.layer.borderColor = [UIColor blueColor].CGColor;
    button.layer.borderWidth = 1.0/[UIScreen mainScreen].scale;
    button.layer.cornerRadius = 5;
    
    return button;
}

- (void)alertWithTitleAndMessage
{
    DLMAlertController *vc = [DLMAlertController alertControllerWithTitle:@"Title" message:@"this is a message" preferredStyle:DLMAlertControllerStyleAlert];
    [self presentViewController:vc animated:true completion:nil];
}

- (void)alertWithCustomerView
{
    
}

- (void)alertWithCustomerViewController
{
    
}

- (void)alertWithUIAlertController
{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"标题" message:@"消息" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    UIAlertAction *action2 = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:action1];
    [alert addAction:action2];
    [self presentViewController:alert animated:true completion:nil];
}

@end
