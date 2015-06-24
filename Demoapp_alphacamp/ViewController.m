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
    
//    [[NSUserDefaults standardUserDefaults] setValue:nil forKey:@"thisUsername"];
//    [[NSUserDefaults standardUserDefaults] setValue:nil forKey:@"thisPassword"];
//    [[NSUserDefaults standardUserDefaults] synchronize];
   
    if (([[NSUserDefaults standardUserDefaults] objectForKey:@"thisUsername"] != nil) && ([[NSUserDefaults standardUserDefaults] objectForKey:@"thisPassword"] != nil)) {
        _btnLogin.hidden = 1;
        _manager = [AFHTTPRequestOperationManager manager];
        [_manager POST:@"https://dojo.alphacamp.co/api/v1/login"
            parameters:@{
                         @"email":[[NSUserDefaults standardUserDefaults] objectForKey:@"thisUsername"],
                         @"password":[[NSUserDefaults standardUserDefaults] objectForKey:@"thisPassword"],
                         @"api_key":@"7c819379f329bc03ea4fcdb5f521831b5b920398"}
               success:^(AFHTTPRequestOperation *operation, id responseObject) {
            NSLog(@"yes");
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            NSLog(@"no");
        }];
    }
    else {
        _btnLogin.hidden = 0;
        
        NSLog(@"nothing");
    }
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
