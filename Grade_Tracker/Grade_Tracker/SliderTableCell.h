//
//  SliderTableCell.h
//  Grade_Tracker
//
//  Created by Elizabeth Ji on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SliderTableCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *categoryLabel;
@property (weak, nonatomic) IBOutlet UILabel *gradeLabel;
@property (weak, nonatomic) IBOutlet UISlider *gradeSlider;

@end
