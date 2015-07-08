//
//  ViewController.h
//  Area51
//
//  Created by LJ Sigersmith on 7/6/15.
//  Copyright (c) 2015 LJ Sigersmith. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kGameLevelKey @"GameLevel"

@interface ViewController : UIViewController <UIAlertViewDelegate>  {
    
    NSInteger clickedButton;
    NSUserDefaults *GameInfo;
    NSInteger GameLevel;
    UIAlertView *gameChoice;
    NSString *choiceTitle;
    NSString *choiceMessage;
    NSString *cancelTitle;
    NSString *otherButtons;
    IBOutlet UITextView *storyView;
}

@end

