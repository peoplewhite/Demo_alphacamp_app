//
//  LoginViewController.h
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/11.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "ViewController.h"
@interface LoginViewController : ViewController <UIGestureRecognizerDelegate>

    


@property IBOutlet UITextField *tfUsername;
@property IBOutlet UITextField *tfPassword;
@property IBOutlet UILabel *tip1;
@property IBOutlet UILabel *tip2;
@property IBOutlet UILabel *tip3;

@end
