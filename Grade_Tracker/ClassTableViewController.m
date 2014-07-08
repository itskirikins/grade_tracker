//
//  ClassTableViewController.m
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import "ClassTableViewController.h"
#import "ClassItem.h"
#import "ClassItemStore.h"

@implementation ClassTableViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    [[ClassItemStore sharedStore] createClass];
    return [[[ClassItemStore sharedStore] allClasses] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    
    NSArray *classes = [[ClassItemStore sharedStore] allClasses];
    ClassItem *class = classes[indexPath.row];
    cell.textLabel.text = class.className;
    
    return cell;
}

@end
