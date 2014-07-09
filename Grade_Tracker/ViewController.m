//
//  ViewController.m
//  Pie Chart
//
//  Created by Ashe Magalhaes on 7/8/14.
//  Copyright (c) 2014 Facebook. All rights reserved.
//

#import "ViewController.h"
#import "ClassTableViewController.h"
#import "ClassItem.h"
#import "ClassItemStore.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@end

@implementation ViewController
@synthesize pieChartView;


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSMutableArray *dataArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 9; i++){
        
        //random number generator
        NSNumber *number = [NSNumber numberWithInt:rand()%60 + 20];
        
        //add number to array
        [dataArray addObject:number];
    }
    //call DLPieChart method
    
    UILabel *lols = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 200, 40)];
    [lols setText:@"HEHEHEHEHEHHEHEHE"];
    [self.pieChartView addSubview:lols];
    [self.pieChartView renderInLayer:self.pieChartView dataArray:dataArray]; 


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)done:(id)sender {
    [self performSegueWithIdentifier:@"BackToTableSegue"
                              sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"BackToTableSegue"]) {
        ClassTableViewController *tvc = [segue destinationViewController];
        [tvc addNewClass];
    }
}

@end
