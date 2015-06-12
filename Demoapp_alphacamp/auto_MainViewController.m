//
//  auto_MainViewController.m
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/12.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "auto_MainViewController.h"

@interface auto_MainViewController ()

@end

@implementation auto_MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //background
    [self.view setBackgroundColor:[UIColor blackColor]];
    
    //Logo
    imgViewLogo = [[UIImageView alloc] initWithFrame:CGRectMake(47.0f, 146.0f, 227.0f, 48.0f)];
    imgViewLogo.image = [UIImage imageNamed:@"logo_alphacamp"];
    imgViewLogo.contentMode = UIViewContentModeScaleAspectFill;
    [self.view addSubview:imgViewLogo];
    
    //button
    btnLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnLogin.frame = CGRectMake(85.0f, 300.0f, 150.0f, 50.0f);
    btnLogin.backgroundColor = [UIColor redColor];
    [btnLogin setTitle:@"Login" forState:UIControlStateNormal];
    btnLogin.tintColor = [UIColor whiteColor];
    btnLogin.enabled = 1;
    btnLogin.userInteractionEnabled = 1;
    [btnLogin addTarget:self action:@selector(someMethod) forControlEvents:UIControlEventTouchUpInside];
//    btnLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:btnLogin];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)someMethod
{
    [self performSegueWithIdentifier:@"change2LoginVC" sender:self];
}
@end
