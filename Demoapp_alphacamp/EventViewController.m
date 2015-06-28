//
//  UsernameViewController.m
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/11.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "EventViewController.h"
#import <Parse/Parse.h>

@interface EventViewController ()

@end

@implementation EventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    PFObject *pfObj = [PFObject objectWithClassName:@"Event"];
    PFQuery *pfQ = [PFQuery queryWithClassName:@"Event"];
    [pfQ findObjectsInBackgroundWithBlock:^(NSArray *arr, NSError *error) {
        if (!error) {
            NSLog(@"%@", arr);
        }
        else {
            NSLog(@"nothing");
        }
    }];
//    [pfObj fi]

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    return cell;
}
@end
