//
//  ClassItemStore.h
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ClassItem;

@interface ClassItemStore : NSObject

@property (nonatomic, readonly, copy) NSArray *allClasses;
+ (instancetype)sharedStore;
- (ClassItem *) createClass;
- (void)removeClass:(ClassItem *)class;
- (void)moveItemAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex;


@end
