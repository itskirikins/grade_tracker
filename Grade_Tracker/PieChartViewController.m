//
//  ViewController.m
//  Pie Chart
//
//  Created by Ashe Magalhaes on 7/8/14.
//  Copyright (c) 2014 Facebook. All rights reserved.
//

#import "PieChartViewController.h"
#import "ClassTableViewController.h"

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
    for (int i = 0; i < count; i++){
        
        //random number generator
        NSNumber *number = @(100 / count);
        
        //add number to array
        [dataArray addObject:number];
    }
    
    //call DLPieChart method
    [self.pieChartView renderInLayer:self.pieChartView dataArray:dataArray];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"DamnedDoneSegue"]) {
        ClassTableViewController *classTableViewController = segue.destinationViewController;
        [classTableViewController addNewClass];
    }
}

@end
