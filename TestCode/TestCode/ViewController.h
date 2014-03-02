//
//  ViewController.h
//  TestCode
//
//  Created by yasuyuki on 2014/02/25.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (assign) NSInteger counter;

- (NSString *) fullName:(NSString *)sei lastName:(NSString *)mei;
- (void) countUp;
- (IBAction)updateValue3:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet UILabel *valueLabel;
@end
