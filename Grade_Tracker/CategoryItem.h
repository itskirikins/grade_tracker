//
//  CategoryItem.h
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/9/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AssignmentItem;

@interface CategoryItem : NSObject

@property NSString * categoryName;
@property double categoryGrade;
@property double categoryPercentage;
@property NSMutableArray *assignments;

- (void)addAssignment:(AssignmentItem *)assignment;
- (void)removeAssignment:(AssignmentItem *)assignment;

@end
