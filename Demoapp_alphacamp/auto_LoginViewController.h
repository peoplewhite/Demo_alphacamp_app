//
//  auto_LoginViewController.h
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/12.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "ViewController.h"

@interface auto_LoginViewController : ViewController <UIGestureRecognizerDelegate>
{
     UITextField *tfUsername;
     UITextField *tfPassword;
     UIButton *btnLogin;
    
     NSString *setUsername;
     NSString *setPassword;
    
    UILabel *showUsernameWrong;
    UILabel *showPasswordWrong;
    UILabel *showBothWrong;
}
@end
