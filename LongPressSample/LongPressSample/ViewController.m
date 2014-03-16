//
//  ViewController.m
//  LongPressSample
//
//  Created by yasuyuki on 2014/03/16.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *flower;
- (IBAction)longPress:(UILongPressGestureRecognizer *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _flower.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)longPress:(UILongPressGestureRecognizer *)sender {
    if (sender.state == UIGestureRecognizerStateBegan) {
        CGPoint point = [sender locationInView:self.view];
        _flower.center = CGPointMake(point.x, -50);
        _flower.hidden = NO;
        CGFloat height = _flower.bounds.size.height;
        [UIView animateWithDuration:0.5 delay:0.0
                            options:UIViewAnimationOptionCurveEaseOut
                         animations:^{
                             _flower.center = CGPointMake(point.x, point.y - (height/2));
                         }
                         completion:nil];
    }
}
@end
