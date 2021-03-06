//
//  ClassItem.m
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import "ClassItem.h"

@implementation ClassItem

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.categories forKey:@"categories"];
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];
    if (self) {
        _categories = [[NSMutableArray alloc] init];
        _categories = [aDecoder decodeObjectForKey:@"categories"];
    }
    return self;
}

- (void)addCategory:(CategoryItem *)category
{
    [_categories addObject:category];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _categories = [[NSMutableArray alloc] init];
    }
    return self;
}



@end
