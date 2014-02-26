//
//  ViewController.m
//  TestCode
//
//  Created by yasuyuki on 2014/02/25.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

#define sum(a, b) a + b

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [ViewController printMutableArray];
}

+ (void)printMutableArray
{
    NSMutableArray *randomList = [NSMutableArray array];
    for (int i = 0; i < 50; i++) {
        NSInteger v = arc4random() % 10;
        [randomList addObject:@(v)];
    }
    NSLog(@"%@", randomList);
    // test
}

+ (void)printArray
{
    NSArray *devices = @[@"Mac", @"iPhone", @"iPad"];
    NSLog(@"devices = %@", devices);
    for (int i = 0, length = devices.count; i < length; i++) {
        NSLog(@"%d %@", i, devices[i]);
    }
    [devices sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
    
    NSArray *nums = @[@1, @2, @5, @10];
    NSLog(@"nums = %@", nums);
    NSLog(@"nums.count = %d", nums.count);
    NSInteger sum = 0;
    for (NSNumber *val in nums) {
        sum += [val intValue];
    }
    NSLog(@"sum = %d", sum);
}

+ (void)printFormatString
{
    NSString *name = @"ともか";
    float point = 92.5;
    NSString *result = (point > 80 ? @"合格" : @"不合格");
    NSString *message = [NSString stringWithFormat:@"%@ %@ (%.1f点)", result, name, point];
    NSLog(@"%@ : %d", message, [message length]);
}

+ (void)printCountDown
{
    NSDate *today = [NSDate date];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSDate *eventDate = [formatter dateFromString:@"2014/09/21 09:00:00"];
    NSTimeInterval secs = [eventDate timeIntervalSinceDate:today];
    NSInteger days = round(secs / (60 * 60 * 24));
    NSLog(@"イベントまであと %d日", days);
}

+ (void)printDate2
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy年MM月dd日 HH時mm分ss秒"];
    NSString *dateString = [formatter stringFromDate:[NSDate date]];
    NSLog(@"%@", dateString);
}

+ (void)printDate1
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    [formatter setLocale:[NSLocale systemLocale]];
    [formatter setTimeZone:[NSTimeZone systemTimeZone]];
    NSDate *theDay = [formatter dateFromString:@"2014/02/26 20:32:10"];
    
    NSLocale *currentLocale = [NSLocale currentLocale];
    NSLog(@"その日は %@", [theDay descriptionWithLocale:currentLocale]);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
