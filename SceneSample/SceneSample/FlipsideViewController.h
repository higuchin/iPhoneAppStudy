//
//  FlipsideViewController.h
//  SceneSample
//
//  Created by yasuyuki on 2014/04/06.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FlipsideViewController;

@protocol FlipsideViewControllerDelegate
- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller
                              configDic:(NSMutableDictionary *)dic;
@end

@interface FlipsideViewController : UIViewController

@property (weak, nonatomic) id <FlipsideViewControllerDelegate> delegate;

- (IBAction)done:(id)sender;
- (void) setConfigureDic:(NSMutableDictionary *)configDic;

@end
