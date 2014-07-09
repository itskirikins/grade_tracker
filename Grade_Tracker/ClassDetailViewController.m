//
//  ClassDetailViewController.m
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/9/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import "ClassDetailViewController.h"
#import "ClassItemStore.h"
#import "ClassItem.h"
#import "CategoryItem.h"

@implementation ClassDetailViewController

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_classItem.categories count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
        CategoryItem *cat = _classItem.categories[indexPath.row];
        cell.textLabel.text = cat.categoryName;
    
        return cell;
 

}





@end
