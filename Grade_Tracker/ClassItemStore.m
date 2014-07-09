//
//  ClassItemStore.m
//  Grade_Tracker
//
//  Created by Yian Cheng on 7/8/14.
//  Copyright (c) 2014 EAAA. All rights reserved.
//

#import "ClassItemStore.h"
#import "ClassItem.h"

@interface ClassItemStore()
@property (nonatomic) NSMutableArray *privateClasses;
@end

@implementation ClassItemStore

- (NSArray *)allClasses
{
    return [self.privateClasses copy];
}

- (ClassItem *)createClass
{
    ClassItem *class = [[ClassItem alloc] init];
    NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: 5];
    
    for (int i=0; i<5; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random_uniform([letters length]) % [letters length]]];
    }
    class.className = randomString;
    class.classGrade = arc4random();
    [self.privateClasses addObject:class];
    return class;
}

- (void)removeClass:(ClassItem *)class
{
    [self.privateClasses removeObjectIdenticalTo:class];
}

- (void)moveItemAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex
{
    if (fromIndex == toIndex) {
        return;
    }
    ClassItem *class = self.privateClasses[fromIndex];
    [self.privateClasses removeObjectAtIndex:fromIndex];
    [self.privateClasses insertObject:class atIndex:toIndex];
}


//INIT
+ (instancetype)sharedStore
{
    static ClassItemStore *sharedStore;
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}
- (instancetype)init
{
    [NSException raise:@"Singleton" format:@"Use +[ClassItemStore sharedStore]"];
    return nil;
}
- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _privateClasses = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
