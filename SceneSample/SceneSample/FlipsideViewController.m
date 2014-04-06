//
//  FlipsideViewController.m
//  SceneSample
//
//  Created by yasuyuki on 2014/04/06.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "FlipsideViewController.h"

@interface FlipsideViewController ()

@property (weak, nonatomic) IBOutlet UITextField *messageText;
@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (weak, nonatomic) IBOutlet UISwitch *imageSwitch;

- (IBAction)tapView:(UITapGestureRecognizer *)sender;

@end

@implementation FlipsideViewController
{
    NSMutableDictionary *flipsideViewDic;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
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

#pragma mark - Actions

- (IBAction)done:(id)sender
{

    flipsideViewDic[@"user"] = _messageText.text;
    flipsideViewDic[@"date"] = _datePicker.date;
    flipsideViewDic[@"switch"] = @(_imageSwitch.on);
    
    [self.delegate flipsideViewControllerDidFinish:self configDic:flipsideViewDic];
}

- (IBAction)tapView:(UITapGestureRecognizer *)sender {
    [self.view endEditing:YES];
}

- (void) setConfigureDic:(NSMutableDictionary *)configDic
{
    if (flipsideViewDic == nil) {
        flipsideViewDic = [NSMutableDictionary dictionary];
    }
    
    [flipsideViewDic addEntriesFromDictionary:configDic];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void) configureView
{
    _messageText.text = flipsideViewDic[@"user"];
    _datePicker.date = flipsideViewDic[@"date"];
    _imageSwitch.on = [flipsideViewDic[@"switch"] boolValue];
}

@end
