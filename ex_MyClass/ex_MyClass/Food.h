//
//  Food.h
//  ex_MyClass
//
//  Created by yasuyuki on 2014/03/05.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Food : NSObject

@property (readonly) int counter;

- (id) initWithFoods:(NSArray *)entryFoods;
- (NSString *)choiceFood;
@end
