//
//  YYAlertView.h
//  YYAlertView
//
//  Created by mac on 16/5/4.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYAlertView : UIView

@property (strong, nonatomic) void(^getDetermine)(int selectIndex);
@property (weak, nonatomic) IBOutlet UILabel *AlertTitle;
@property (weak, nonatomic) IBOutlet UILabel *AlertContent;
@property (weak, nonatomic) IBOutlet UIButton *AlertCancel;
@property (weak, nonatomic) IBOutlet UIButton *AlertEnd;

+(instancetype)creatXIB;
-(void)showXib;
-(void)closeXib;

@end
