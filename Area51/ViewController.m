//
//  ViewController.m
//  Area51
//
//  Created by LJ Sigersmith on 7/6/15.
//  Copyright (c) 2015 LJ Sigersmith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)Level0 {
    
    gameChoice = [[UIAlertView alloc] initWithTitle:@"Select"
                                            message:@"A Specialty"
                                           delegate:self
                                  cancelButtonTitle:@"Nope"
                                  otherButtonTitles: @"Yup", nil];
    
    [gameChoice show];
    NSLog(@"%ld", (long)clickedButton);
    //[self Level1];
    
}



-(void)Level1 {
    NSLog(@"One");
    storyView.text = [storyView.text stringByAppendingString:@"You wake up at your desk to the sound of alarms. \n The mass of people running by you."];
}



- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    clickedButton = buttonIndex;

}

- (void)viewDidLoad {

    GameInfo = [NSUserDefaults standardUserDefaults];
    GameLevel = [GameInfo integerForKey:kGameLevelKey];
    NSLog(@"%i", GameLevel);
    NSString *callName = [NSString stringWithFormat:@"Level%i", GameLevel];
    SEL callSel = NSSelectorFromString(callName);
    ((void (*)(id, SEL))[self methodForSelector:callSel])(self, callSel);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
