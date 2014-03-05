//
//  Food.m
//  ex_MyClass
//
//  Created by yasuyuki on 2014/03/05.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "Food.h"

@implementation Food
{
    NSArray *foods;
}

- (id) init
{
    self = [self initWithFoods:@[]];
    return self;
}

- (id) initWithFoods:(NSArray *)entryFoods
{
    self = [super init];
    if (entryFoods.count <= 0) {
        foods = @[@"和食", @"中華", @"洋食"];
    } else {
        foods = [[NSArray alloc] initWithArray:entryFoods];
    }
    _counter = 0;
    
    return self;
}

- (NSString *)choiceFood
{
    _counter++;
    NSInteger position = arc4random()%(foods.count);
    return foods[position];
}
@end
