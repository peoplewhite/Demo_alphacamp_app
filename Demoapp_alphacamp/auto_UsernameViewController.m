//
//  auto_UsernameViewController.m
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/12.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "auto_UsernameViewController.h"

@interface auto_UsernameViewController ()

@end

@implementation auto_UsernameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    labelUsernameFix = [[UILabel alloc] initWithFrame:CGRectMake(46.0f, 123.0f, 53.0f, 86.0f)];
    labelUsernameFix.text = @"Hello, ";
    labelUsername = [[UILabel alloc] initWithFrame:CGRectMake(107.0f, 149.0f, 213.0f, 34.0f)];
    labelUsername.text = self.strUsernameInUsernameVC;
    
    
    [self.view addSubview:labelUsernameFix];
    [self.view addSubview:labelUsername];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
