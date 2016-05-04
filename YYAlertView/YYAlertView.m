//
//  YYAlertView.m
//  YYAlertView
//
//  Created by mac on 16/5/4.
//  Copyright © 2016年 Jack YY. All rights reserved.
//

#import "YYAlertView.h"

@interface YYAlertView ()

@property (weak, nonatomic) IBOutlet UIView *AlertView;


@end

@implementation YYAlertView


-(void)awakeFromNib
{
    self.frame = [[UIScreen mainScreen] bounds];
    self.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.0];
    
    self.AlertView.alpha = 0.0;
    self.AlertView.backgroundColor = [UIColor whiteColor];
    self.AlertView.layer.borderWidth = 0.3f;
    self.AlertView.layer.borderColor = [UIColor grayColor].CGColor;
}

-(void)showXib
{
    [[UIApplication sharedApplication].keyWindow.rootViewController.view addSubview:self];
    
    self.AlertView.transform = CGAffineTransformScale(self.AlertView.transform,1.1,1.1);
    
    [UIView animateWithDuration:0.3 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.3];
        
        self.AlertView.transform = CGAffineTransformIdentity;
        self.AlertView.alpha = 1.0;
        
    } completion:nil];
    
}

-(void)closeXib
{
    [UIView animateWithDuration:0.25 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
        
        self.alpha = 0.0;
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.0];
        self.AlertView.transform = CGAffineTransformScale(self.AlertView.transform,0.9,0.9);
        
    } completion:^(BOOL finished) {
        
        if (finished) {
            [self removeFromSuperview];
        }
    }];

}

+(instancetype)creatXIB
{
    return [[[NSBundle mainBundle]loadNibNamed:@"YYAlertView" owner:nil options:nil]lastObject];
}

- (IBAction)End:(UIButton *)sender
{
    self.getDetermine((int)sender.tag);
    [self closeXib];
}

@end
