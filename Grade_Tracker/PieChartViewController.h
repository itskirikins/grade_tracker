//
//  ViewController.h
//  Pie Chart
//
//  Created by Ashe Magalhaes on 7/8/14.
//  Copyright (c) 2014 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DLPieChart.h"

@interface PieChartViewController : UIViewController
@property (nonatomic, retain) IBOutlet DLPieChart *pieChartView;
@property(nonatomic) NSDictionary *piAllButtons;

@end
