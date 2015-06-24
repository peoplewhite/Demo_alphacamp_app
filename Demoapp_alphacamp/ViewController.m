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
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _manager = [AFHTTPRequestOperationManager manager];
    [_manager POST:@"https://dojo.alphacamp.co/api/v1/login" parameters:@{@"email":@"shonshon7@gmail.com", @"password":@"qqpp1100", @"api_key":@"7c819379f329bc03ea4fcdb5f521831b5b920398"} success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"yes");
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"no");
    }];
}

- (void)viewWillAppear:(BOOL)animated {
       _btnLogin.layer.cornerRadius = 8.0;//圓角
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)btnLogin:(id)sender {
    [self performSegueWithIdentifier:@"go2Login" sender:self];
}


@end
