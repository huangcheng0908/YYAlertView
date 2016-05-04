//
//  ViewController.m
//  YYAlertView
//
//  Created by mac on 16/5/4.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import "ViewController.h"
#import "YYAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)alert:(UIButton *)sender
{
    YYAlertView * alertview = [YYAlertView creatXIB];
    alertview.AlertTitle.text = @"请输入标题或者nil";
    alertview.AlertContent.text = @"你敲代码了吗？";
    [alertview setGetDetermine:^(int selectIndex)
    {
        NSLog(@"YY = %d",selectIndex);
    }];
    [alertview showXib];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
