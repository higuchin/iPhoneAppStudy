//
//  MainViewController.m
//  SampleUtililtyApp
//
//  Created by yasuyuki on 2014/03/08.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@property (strong, nonatomic) IBOutlet UILabel *targetLabel;
- (IBAction)removeAddLabel:(id)sender;

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    CGRect rect = CGRectMake(50, 100, 200, 30);
    UILabel *myLabel = [[UILabel alloc] initWithFrame:rect];
    
    myLabel.text = @"今日は晴れです。";
    myLabel.textAlignment = NSTextAlignmentCenter;
    myLabel.textColor = [UIColor whiteColor];
    myLabel.backgroundColor = [UIColor orangeColor];
    
    [self.view addSubview:myLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
    }
}

- (IBAction)removeAddLabel:(id)sender {
    if ([_targetLabel isDescendantOfView:self.view]) {
        [_targetLabel removeFromSuperview];
    } else {
        [self.view addSubview:_targetLabel];
    }
}

@end
