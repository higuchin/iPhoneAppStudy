//
//  ViewController.m
//  SwipeSample
//
//  Created by yasuyuki on 2014/03/16.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *frontView;
- (IBAction)swipeView:(UISwipeGestureRecognizer *)sender;

@property (weak, nonatomic) IBOutlet UIButton *coverButton;
- (IBAction)closeFrontView:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    _coverButton.hidden = YES;
}

- (IBAction)swipeView:(UISwipeGestureRecognizer *)sender {
    CGPoint location = _frontView.center;
    CGFloat center_x = self.view.center.x;
    if (sender.direction == UISwipeGestureRecognizerDirectionRight) {
        location.x = center_x + 120;
        _coverButton.hidden = NO;
    } else if (sender.direction == UISwipeGestureRecognizerDirectionLeft) {
        location.x = center_x;
        _coverButton.hidden = YES;
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        _frontView.center = location;
    }];
}
- (IBAction)closeFrontView:(UIButton *)sender {
    _coverButton.hidden = YES;
    [UIView animateWithDuration:0.5 animations:^{
        _frontView.center = self.view.center;
    }];
}
@end
