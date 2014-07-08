//
//  ViewController.m
//  Pie Chart
//
//  Created by Ashe Magalhaes on 7/8/14.
//  Copyright (c) 2014 Facebook. All rights reserved.
//

#import "PieChartViewController.h"
#import "NewClassController.h"

@interface PieChartViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation PieChartViewController
@synthesize pieChartView;

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    
    //Break down number of categories
    //Get dictionary of only selected values!
    int count = 0;
    NSMutableDictionary *pivalues = [[NSMutableDictionary alloc] init];
    for (NSString *key in _piAllButtons){
        if ([[_piAllButtons objectForKey: key] isEqualToNumber: @1]){
            count++;
            [pivalues setObject:[_piAllButtons objectForKey:key] forKey:key];
        }
    }
    
    //Create dataArray for pieChart
    for (NSString *key in pivalues){
        
        
        //add number to array
        [dataArray addObject:key];
    }
    
    //call DLPieChart method
    [self.pieChartView renderInLayer:self.pieChartView dataArray:dataArray];
}
    
//
//- (void)didReceiveMemoryWarning
//{
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

@end
