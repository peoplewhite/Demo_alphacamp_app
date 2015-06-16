//
//  auto_LoginViewController.m
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/12.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "auto_LoginViewController.h"
#import "auto_UsernameViewController.h"

@interface auto_LoginViewController ()

@end

@implementation auto_LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //textfield_username
    tfUsername = [[UITextField alloc] initWithFrame:CGRectMake(40.0f, 104.0f, 240.0f, 30.0f)];
    tfUsername.placeholder = @"Input email";
    tfUsername.borderStyle = UITextBorderStyleRoundedRect;
    
    //textfield_password
    tfPassword = [[UITextField alloc] initWithFrame:CGRectMake(40.0f, 154.0f, 240.0f, 30.0f)];
    tfPassword.placeholder = @"Input Password";
    tfPassword.borderStyle = UITextBorderStyleRoundedRect;
    tfPassword.secureTextEntry = 1;
    
    //button_login
    btnLogin = [[UIButton alloc] initWithFrame:CGRectMake(83.0f, 204.0f, 155.0f, 45.0f)];
    btnLogin.backgroundColor = [UIColor redColor];
    [btnLogin setTitle:@"Login" forState:UIControlStateNormal];
    btnLogin.tintColor = [UIColor whiteColor];
    [btnLogin addTarget:self action:@selector(change2Next) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:tfUsername];
    [self.view addSubview:tfPassword];
    [self.view addSubview:btnLogin];
    
    
    //tap
    UITapGestureRecognizer *tapGR = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    tapGR.delegate = self;
    [self.view addGestureRecognizer:tapGR];
    
    //寫死
    setUsername = @"sean";
    setPassword = @"111";
    
}

- (void)hideKeyboard {
    [self.view endEditing:1];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)change2Next {
    
    if ([tfUsername.text isEqualToString:setUsername] && [tfPassword.text isEqualToString:setPassword]) {
        if (showUsernameWrong) {
            [showUsernameWrong  removeFromSuperview];
        }
        if (showPasswordWrong) {
            [showPasswordWrong  removeFromSuperview];
        }
        if (showBothWrong) {
            [showBothWrong  removeFromSuperview];
        }
        [self performSegueWithIdentifier:@"change2UsernameVC" sender:self];
    }
    else if ([tfUsername.text isEqualToString:setUsername] && ![tfPassword.text isEqualToString:setPassword]) {
     
        if (!showPasswordWrong) {
            showPasswordWrong = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 273.0f, 320.0f, 21.0f)];
            showPasswordWrong.backgroundColor = [UIColor yellowColor];
            showPasswordWrong.tintColor = [UIColor whiteColor];
            showPasswordWrong.text = @"password wrong";
            showPasswordWrong.textAlignment = NSTextAlignmentCenter;
            [self.view addSubview:showPasswordWrong];
        }
        
        if (showUsernameWrong) {
            [showUsernameWrong  removeFromSuperview];
        }
        if (showBothWrong) {
            [showBothWrong  removeFromSuperview];
        }
    }
    else if (![tfUsername.text isEqualToString:setUsername] && [tfPassword.text isEqualToString:setPassword]) {
        if (!showUsernameWrong) {
            showUsernameWrong = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 273.0f, 320.0f, 21.0f)];
            showUsernameWrong.backgroundColor = [UIColor yellowColor];
            showUsernameWrong.tintColor = [UIColor whiteColor];
            showUsernameWrong.text = @"username wrong";
            showUsernameWrong.textAlignment = NSTextAlignmentCenter;
            [self.view addSubview:showUsernameWrong];
        }
        if (showBothWrong) {
            [showBothWrong  removeFromSuperview];
        }
        if (showPasswordWrong) {
            [showPasswordWrong  removeFromSuperview];
        }
    }
    else {
        if (![showBothWrong isDescendantOfView:self.view]) {
            showBothWrong = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 273.0f, 320.0f, 21.0f)];
            showBothWrong.backgroundColor = [UIColor yellowColor];
            showBothWrong.tintColor = [UIColor whiteColor];
            showBothWrong.text = @"both wrong";
            showBothWrong.textAlignment = NSTextAlignmentCenter;
            [self.view addSubview:showBothWrong];
        }
        if ([showUsernameWrong isDescendantOfView:self.view]) {
            [showUsernameWrong  removeFromSuperview];
        }
        if ([showPasswordWrong isDescendantOfView:self.view]) {
            [showPasswordWrong  removeFromSuperview];
        }
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    auto_UsernameViewController *usernameVC = segue.destinationViewController;
    usernameVC.strUsernameInUsernameVC = tfUsername.text;
}
//- (BOOL)shouldPerformSegueWithIdentifier:(NSString *)identifier sender:(id)sender
//{
//    NSLog(@"hello");
//    if ([tfUsername.text isEqualToString:setUsername] && [tfPassword.text isEqualToString:setPassword]) {
//        NSLog(@"ok");
//        return 1;
//    }
//    else if ([tfUsername.text isEqualToString:setUsername] && ![tfPassword.text isEqualToString:setPassword]) {
//        NSLog(@"password wrong");
//        return 0;
//    }
//    else if (![tfUsername.text isEqualToString:setUsername] && [tfPassword.text isEqualToString:setPassword]) {
//        NSLog(@"username wrong");
//        return 0;
//    }
//    else {
//        NSLog(@"both wrong");
//        return 0;
//    }
//}

@end
