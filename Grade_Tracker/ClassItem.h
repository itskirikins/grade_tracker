//
//  ClassItem.h
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ClassItem : NSObject <NSCoding>

@property NSMutableArray *checkedCategories;
@property NSMutableDictionary *categories;
@property NSString *className;
@property int classGrade;

@end
