//
//  LoginViewController.m
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/11.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "LoginViewController.h"
#import "UsernameViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tfUsername becomeFirstResponder];
    //先寫死
    strUsername = @"sean";
    strPassword = @"111";
    
    self.tip1.hidden = YES;
    self.tip2.hidden = YES;
    self.tip3.hidden = YES;
    
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [tapGR setDelegate:self];
    
    [self.view addGestureRecognizer:tapGR];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)login:(id)sender {
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
//    UsernameViewController *usernameVC = segue.destinationViewController;
//    usernameVC.strShowUsername = self.tfUsername.text;
}


- (void)hideKeyboard
{
    [self.view endEditing:YES];
}

- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender{
    
//    return 1;
    if ([self.tfUsername.text isEqual:strUsername] && [self.tfPassword.text isEqual:strPassword]) {
        //登入成功
        return 1;
    }
    else if ([self.tfUsername.text isEqual:strUsername] && ![self.tfPassword.text isEqual:strPassword]) {
        //密碼錯誤
        self.tip1.hidden = YES;
        self.tip2.hidden = NO;
        self.tip3.hidden = YES;
        
        return 0;
    }
    else if (![self.tfUsername.text isEqual:strUsername] && [self.tfPassword.text isEqual:strPassword]) {
        //帳號錯誤
        self.tip1.hidden = NO;
        self.tip2.hidden = YES;
        self.tip3.hidden = YES;
        return 0;
    }
    else {
        //兩者都錯
        self.tip1.hidden = YES;
        self.tip2.hidden = YES;
        self.tip3.hidden = NO;
        
        return 0;
    }
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