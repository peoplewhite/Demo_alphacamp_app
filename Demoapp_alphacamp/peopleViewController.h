//
//  peopleViewController.h
//  Demoapp_alphacamp
//
//  Created by Po-Hao Cheng on 2015/6/16.
//  Copyright (c) 2015年 phc. All rights reserved.
//

#import "ViewController.h"

@interface peopleViewController : ViewController <UIGestureRecognizerDelegate>
{
    IBOutlet UIImageView *showPhoto;
    IBOutlet UILabel *showName;
    IBOutlet UITextView *showDescription;
    
    IBOutlet UISegmentedControl *segmentControl;
}


@end
