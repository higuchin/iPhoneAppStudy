//
//  MainViewController.m
//  SceneSample
//
//  Created by yasuyuki on 2014/04/06.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@property (weak, nonatomic) IBOutlet UILabel *messageLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *catImage;

@end

@implementation MainViewController
{
    NSMutableDictionary *mainViewDic;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    mainViewDic = [NSMutableDictionary dictionary];
    mainViewDic[@"user"] = @"未設定";
    mainViewDic[@"date"] = [NSDate date];
    mainViewDic[@"switch"] = @YES;
}

- (void)viewWillAppear:(BOOL)animated
{
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
                              configDic:(NSMutableDictionary *)dic
{
    if (mainViewDic == nil) {
        mainViewDic = [NSMutableDictionary dictionaryWithCapacity:3];
    }
    
    [mainViewDic addEntriesFromDictionary:dic];

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showAlternate"]) {
        [[segue destinationViewController] setDelegate:self];
        [[segue destinationViewController] setConfigureDic:mainViewDic];
    }
}


- (void) configureView
{
    _messageLabel.text = [NSString stringWithFormat:@"こんにちは、%@さん", mainViewDic[@"user"]];

    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyy年MM月dd日 HH:mm"];
    _dateLabel.text = [formatter stringFromDate:mainViewDic[@"date"]];
    
    _catImage.hidden = ![mainViewDic[@"switch"] boolValue];
}
@end
