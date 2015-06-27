//
//  LoginViewController.m
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/11.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "LoginViewController.h"
//#import "UsernameViewController.h"
#import <AFNetworking.h>
#import "GV.h"

@interface LoginViewController ()
@property AFHTTPRequestOperationManager *manager;
@property UIActivityIndicatorView *indicatorView;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tfUsername becomeFirstResponder];
    
    //手勢
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    [tapGR setDelegate:self];
    [self.view addGestureRecognizer:tapGR];
    
    
    _btnLogin2.layer.cornerRadius = 8.0;
    
    
    //Loading動畫設定
    _indicatorView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    _indicatorView.center = self.view.center;
    [self.view addSubview:_indicatorView];
    [_indicatorView startAnimating];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnLogin:(id)sender {
    _manager = [AFHTTPRequestOperationManager manager];
    [_manager POST:@"https://dojo.alphacamp.co/api/v1/login"
        parameters:@{
                     @"email":_tfUsername.text,
                     @"password":_tfPassword.text,
                     @"api_key":@"7c819379f329bc03ea4fcdb5f521831b5b920398"}
           success:^(AFHTTPRequestOperation *operation, id responseObject) {
               //登入成功
               
               [_indicatorView stopAnimating];
               
               //將登入資訊存入本地端
               [[NSUserDefaults standardUserDefaults] setValue:@YES forKey:@"isAutoLogin"];
               [[NSUserDefaults standardUserDefaults] setValue:_tfUsername.text forKey:@"thisUsername"];
               [[NSUserDefaults standardUserDefaults] setValue:_tfPassword.text forKey:@"thisPassword"];
               [[NSUserDefaults standardUserDefaults] synchronize];
               isPassLogin = @"YES";
               //換頁過去
               [self performSegueWithIdentifier:@"go2Tab" sender:self];
           } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
               //登入失敗
               
               [_indicatorView stopAnimating];
           }];
}


- (void)hideKeyboard
{
    [self.view endEditing:YES];
}
@end