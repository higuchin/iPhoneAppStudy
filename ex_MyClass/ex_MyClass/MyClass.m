//
//  MyClass.m
//  ex_MyClass
//
//  Created by yasuyuki on 2014/03/04.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "MyClass.h"

@implementation MyClass

- (NSString *) hello:(NSString *)who
{
    NSString *message = [NSString stringWithFormat:@"こんちにちは。%@の%@さん。", _where, who];
    return message;
}
@end
