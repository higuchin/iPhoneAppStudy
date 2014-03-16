//
//  ViewController.m
//  DragSample
//
//  Created by yasuyuki on 2014/03/16.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *flower;
- (IBAction)rotate:(UIRotationGestureRecognizer *)sender;
- (IBAction)dragging:(UIPanGestureRecognizer *)sender;
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
}

- (IBAction)rotate:(UIRotationGestureRecognizer *)sender {
    _flower.transform = CGAffineTransformMakeRotation(sender.rotation);
}

- (IBAction)dragging:(UIPanGestureRecognizer *)sender {
    CGPoint translation = [sender translationInView:self.view];
    CGPoint point = CGPointMake(_flower.center.x + translation.x,
                                _flower.center.		y + translation.y);
    _flower.center = point;
    
    [sender setTranslation:CGPointZero inView:self.view];
}
@end
