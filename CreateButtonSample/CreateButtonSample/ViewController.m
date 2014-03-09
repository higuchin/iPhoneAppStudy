//
//  ViewController.m
//  CreateButtonSample
//
//  Created by yasuyuki on 2014/03/09.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void) hello:(UIButton *)sender;
- (void) disableButton:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [button setTitle:@"こんにちは" forState:UIControlStateNormal];
    [button setTitle:@"こににちは" forState:UIControlStateDisabled];
    button.backgroundColor = [UIColor grayColor];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    
    button.frame = CGRectMake(50, 50, 100, 40);
    
    [button addTarget:self action:@selector(disableButton:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) hello:(UIButton *)sender
{
    NSLog(@"Hello");
}

- (void) disableButton:(UIButton *)sender
{
    sender.enabled = NO;
}

@end
