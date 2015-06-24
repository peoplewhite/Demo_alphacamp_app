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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
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
