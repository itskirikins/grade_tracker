//
//  NewClassController.h
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NewClassController : UIViewController
{
    BOOL checked1;
    BOOL checked2;
    BOOL checked3;
    BOOL checked4;
    BOOL checked5;
    BOOL checked6;
    BOOL checked7;
    BOOL checked8;
    BOOL checked9;
    BOOL checked10;
}

//Buttons
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton1;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton2;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton3;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton4;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton5;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton6;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton7;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton8;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton9;
@property (weak, nonatomic) IBOutlet UIButton *checkBoxButton10;

//Actions
- (IBAction)checkButtonAction1:(id)sender;
- (IBAction)checkButtonAction2:(id)sender;
- (IBAction)checkButtonAction3:(id)sender;
- (IBAction)checkButtonAction4:(id)sender;
- (IBAction)checkButtonAction5:(id)sender;
- (IBAction)checkButtonAction6:(id)sender;
- (IBAction)checkButtonAction7:(id)sender;
- (IBAction)checkButtonAction8:(id)sender;
- (IBAction)checkButtonAction9:(id)sender;
- (IBAction)checkButtonAction10:(id)sender;

@end
