//
//  CategoryItem.m
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/9/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import "CategoryItem.h"

@implementation CategoryItem

- (void) addAssignment:(AssignmentItem *)assignment
{
    [_assignments addObject:assignment];
}

- (void) removeAssignment:(AssignmentItem *)assignment
{
    [_assignments removeObject:assignment];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _assignments = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
