//
//  ClassItem.h
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import <Foundation/Foundation.h>
@class CategoryItem;

@interface ClassItem : NSObject <NSCoding>

@property NSString *className;
@property double classGrade;
@property NSMutableArray *categories;

- (void)addCategory:(CategoryItem *)category;


@end
