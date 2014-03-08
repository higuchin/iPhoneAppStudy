//
//  FlipsideViewController.h
//  SampleUtililtyApp
//
//  Created by yasuyuki on 2014/03/08.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;

@end
