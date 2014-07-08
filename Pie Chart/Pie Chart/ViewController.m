//
//  ViewController.m
//  Pie Chart
//
//  Created by Ashe Magalhaes on 7/8/14.
//  Copyright (c) 2014 Facebook. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pieChartView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 1; i++){
        
        //random number generator
        NSNumber *number = [NSNumber numberWithInt:rand()%60 + 20];
        
        //add number to array
        [dataArray addObject:number];
    }
    //call DLPieChart method
    [self.pieChartView renderInLayer:self.pieChartView dataArray:dataArray]; 


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
