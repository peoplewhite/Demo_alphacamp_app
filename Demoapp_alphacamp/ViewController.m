//
//  ViewController.m
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/11.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "ViewController.h"
#import <AFNetworking.h>

@interface ViewController ()
@property AFHTTPRequestOperationManager *manager;
//@property BOOL getResult;
@property BOOL didAutoLogin;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    [[NSUserDefaults standardUserDefaults] setValue:@"shonshon7@gmail.com" forKey:@"thisUsername"];
//    [[NSUserDefaults standardUserDefaults] setValue:@"qqpp1100" forKey:@"thisPassword"];
//    [[NSUserDefaults standardUserDefaults] synchronize];
    NSLog(@"vdl");

    
}

- (void)viewWillAppear:(BOOL)animated {
    _btnLogin.layer.cornerRadius = 8.0;//圓角
    NSLog(@"vwa");
}
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"vda");
    if ([[NSUserDefaults standardUserDefaults] objectForKey:@"isAutoLogin"] != nil) {
        NSLog(@"enter");
        
        
        if (([[NSUserDefaults standardUserDefaults] objectForKey:@"thisUsername"] != nil) && ([[NSUserDefaults standardUserDefaults] objectForKey:@"thisPassword"] != nil)) {
            
            NSLog(@"2");
            UIActivityIndicatorView *indicatorView = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
            indicatorView.center = self.view.center;
            [self.view addSubview:indicatorView];
            [indicatorView startAnimating];
            
            _btnLogin.hidden = 1;
            _manager = [AFHTTPRequestOperationManager manager];
            [_manager POST:@"https://dojo.alphacamp.co/api/v1/login"
                parameters:@{
                             @"email":[[NSUserDefaults standardUserDefaults] objectForKey:@"thisUsername"],
                             @"password":[[NSUserDefaults standardUserDefaults] objectForKey:@"thisPassword"],
                             @"api_key":@"7c819379f329bc03ea4fcdb5f521831b5b920398"}
                   success:^(AFHTTPRequestOperation *operation, id responseObject) {
                       //自動登入成功
                       NSLog(@"3");
                       [indicatorView stopAnimating];
                       [self performSegueWithIdentifier:@"autoLogin" sender:self];
                       _didAutoLogin = 1;
                   } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                       //自動登入失敗
                       NSLog(@"4");
                       [indicatorView stopAnimating];
                       _didAutoLogin = 0;
                   }];
        }
        else {
            //手機沒存資料，需手動登入
            _btnLogin.hidden = 0;
            _didAutoLogin = 0;
            
            NSLog(@"nothing");
        }
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnLogin:(id)sender {
    [self performSegueWithIdentifier:@"go2Login" sender:self];
}


@end
