//
//  ViewController.m
//  AlertSample
//
//  Created by yasuyuki on 2014/03/18.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"確認" message:@"実行します"
                          delegate:self cancelButtonTitle:@"キャンセル"
                          otherButtonTitles:@"Aコース", @"Bコース", @"Cコース", nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0) {
        NSLog(@"キャンセルされました");
    } else if (buttonIndex == 1) {
        NSLog(@"Aコース");
    } else if (buttonIndex == 2) {
        NSLog(@"Bコース");
    } else if (buttonIndex == 3) {
        NSLog(@"Cコース");
    } else {
        NSLog(@"それ以外");
    }
}

@end
