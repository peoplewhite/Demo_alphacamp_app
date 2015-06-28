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
@property (weak, nonatomic) IBOutlet UITableView *tableViewEvent;
@property NSMutableArray *arrAllEvents;
@property NSDictionary *dictSingleEvent;
@end

@implementation EventViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _arrAllEvents = [[NSMutableArray alloc]init];
    NSString *strDateTitle = @"開課日期：";
    
    
    PFQuery *pfQ = [PFQuery queryWithClassName:@"Event"];
    [pfQ findObjectsInBackgroundWithBlock:^(NSArray *arr, NSError *error) {
        if (!error) {
            for (PFObject *obj in arr) {
                
                PFFile *userImageFile = obj[@"image"];
                [userImageFile getDataInBackgroundWithBlock:^(NSData *imageData, NSError *error) {
                    
                    UIImage *img = [UIImage imageWithData:imageData];
                    _dictSingleEvent = nil;
                    
                    if (img) {
                        //該筆資料有圖片
                        
                        _dictSingleEvent = @{
                                             @"eventName": obj[@"eventName"],
                                             @"eventURL": obj[@"eventURL"],
                                             @"image": img,
                                             @"dateString": [strDateTitle stringByAppendingString:obj[@"dateString"]],
                                             @"content": obj[@"content"]
                                             };
//                        NSLog(@"%@", _dictSingleEvent[@"eventName"]);
                        [_arrAllEvents addObject:_dictSingleEvent];
                        NSLog(@"have photo");
                        NSLog(@"%@", _dictSingleEvent[@"image"]);
                    }
                    else {
                    //無圖片
                        
                        _dictSingleEvent = @{
                                             @"eventName": obj[@"eventName"],
                                             @"eventURL": obj[@"eventURL"],
//                                             @"image": nil,
                                             @"dateString": [strDateTitle stringByAppendingString:obj[@"dateString"]],
                                             @"content": obj[@"content"]
                                             };
                        [_arrAllEvents addObject:_dictSingleEvent];
                        NSLog(@"no photo");
                        NSLog(@"%@", _dictSingleEvent[@"image"]);
                    }
                    [_tableViewEvent reloadData];
                }];
            }
        }
        else {
            NSLog(@"no photo");
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
//    NSLog(@"count = %ld", _arrAllEvents.count);
    return _arrAllEvents.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:101];
    UILabel *lbTitle = (UILabel *)[cell viewWithTag:102];
    UILabel *lbDate = (UILabel *)[cell viewWithTag:103];
    UITextView *textView = (UITextView *)[cell viewWithTag:104];
//    UIButton *btnURL = (UIButton *)[cell viewWithTag:105];
    
    lbTitle.text = _arrAllEvents[indexPath.row][@"eventName"];
    lbDate.text = _arrAllEvents[indexPath.row][@"dateString"];
    textView.text = _arrAllEvents[indexPath.row][@"content"];
    
    if (_arrAllEvents[indexPath.row][@"image"]) {
        imageView.image = _arrAllEvents[indexPath.row][@"image"];
    }
    else {
        imageView.image = nil;
    }
    
    return cell;
}
@end
