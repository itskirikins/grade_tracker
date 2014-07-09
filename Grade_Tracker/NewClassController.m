//
//  NewClassController.m
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import "NewClassController.h"
#import "PieChartViewController.h"

@implementation NewClassController
@synthesize checkBoxButton1;
@synthesize checkBoxButton2;
@synthesize checkBoxButton3;
@synthesize checkBoxButton4;
@synthesize checkBoxButton5;
@synthesize checkBoxButton6;
@synthesize checkBoxButton7;
@synthesize checkBoxButton8;
@synthesize checkBoxButton9;
@synthesize checkBoxButton10;

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    if (self){
        checked1 = NO; //starts off blank
        checked2 = NO;
        checked3 = NO;
        checked4 = NO;
        checked5 = NO;
        checked6 = NO;
        checked7 = NO;
        checked8 = NO;
        checked9 = NO;
        checked10 = NO;
    }
}

- (IBAction)checkButtonAction1:(id)sender
{
    if (!checked1){
        [checkBoxButton1 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked1 = YES;
    } else if (checked1) {
        [checkBoxButton1 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked1 = NO;
    }
}

- (IBAction)checkButtonAction2:(id)sender
{
    if (!checked2){
        [checkBoxButton2 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked2 = YES;
    } else if (checked2) {
        [checkBoxButton2 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked2 = NO;
    }
}

- (IBAction)checkButtonAction3:(id)sender
{
    if (!checked3){
        [checkBoxButton3 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked3 = YES;
    } else if (checked3) {
        [checkBoxButton3 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked3 = NO;
    }
}

- (IBAction)checkButtonAction4:(id)sender
{
    if (!checked4){
        [checkBoxButton4 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked4 = YES;
    } else if (checked4) {
        [checkBoxButton4 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked4 = NO;
    }
}

- (IBAction)checkButtonAction5:(id)sender
{
    if (!checked5){
        [checkBoxButton5 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked5 = YES;
    } else if (checked5) {
        [checkBoxButton5 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked5 = NO;
    }
}

- (IBAction)checkButtonAction6:(id)sender
{
    if (!checked6){
        [checkBoxButton6 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked6 = YES;
    } else if (checked6) {
        [checkBoxButton6 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked6 = NO;
    }
}

- (IBAction)checkButtonAction7:(id)sender
{
    if (!checked7){
        [checkBoxButton7 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked7 = YES;
    } else if (checked7) {
        [checkBoxButton7 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked7 = NO;
    }
}

- (IBAction)checkButtonAction8:(id)sender
{
    if (!checked8){
        [checkBoxButton8 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked8 = YES;
    } else if (checked8) {
        [checkBoxButton8 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked8 = NO;
    }
}

- (IBAction)checkButtonAction9:(id)sender
{
    if (!checked9){
        [checkBoxButton9 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked9 = YES;
    } else if (checked9) {
        [checkBoxButton9 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked9 = NO;
    }
}

- (IBAction)checkButtonAction10:(id)sender
{
    if (!checked10){
        [checkBoxButton10 setImage:[UIImage imageNamed:@"checkbox_checked.png"]
                         forState:UIControlStateNormal];
        checked10 = YES;
    } else if (checked10) {
        [checkBoxButton10 setImage:[UIImage imageNamed:@"empty-check-box-hi.png"]
                         forState:UIControlStateNormal];
        checked10 = NO;
    }
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"NewClass"]) {
        NSDictionary *allButtons = @{
                                     @"Homework" : [NSNumber numberWithBool:checked1],
                                     @"Quizzes" : [NSNumber numberWithBool:checked2],
                                     @"Tests" : [NSNumber numberWithBool:checked3],
                                     @"Participation" : [NSNumber numberWithBool:checked4],
                                     @"Projects" : [NSNumber numberWithBool:checked5],
                                     @"Tests" : [NSNumber numberWithBool:checked6],
                                     @"Midterm 1" : [NSNumber numberWithBool:checked7],
                                     @"Midterm 2" : [NSNumber numberWithBool:checked8],
                                     @"Midterm 3" : [NSNumber numberWithBool:checked9],
                                     @"Final" : [NSNumber numberWithBool:checked10],
                                     };
        
        PieChartViewController *pvc = segue.destinationViewController;
        pvc.piAllButtons = allButtons;
    }
}
@end
