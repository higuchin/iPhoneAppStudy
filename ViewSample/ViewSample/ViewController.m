//
//  ViewController.m
//  ViewSample
//
//  Created by yasuyuki on 2014/03/09.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *butterflyImage;

- (IBAction)touchUp:(id)sender;
- (IBAction)touchDown:(id)sender;
- (IBAction)touchReset:(id)sender;
- (IBAction)touchBig:(id)sender;
- (IBAction)touchSmall:(id)sender;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _butterflyImage.center = self.view.center;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchUp:(id)sender {
    CGPoint point = _butterflyImage.center;
    point.y -= 10;
    _butterflyImage.center = point;
}

- (IBAction)touchDown:(id)sender {
    CGPoint currentPoint = _butterflyImage.center;
    CGPoint point = CGPointMake(currentPoint.x, currentPoint.y + 10);
    _butterflyImage.center = point;
}

- (IBAction)touchReset:(id)sender {
    _butterflyImage.center = self.view.center;
}

- (IBAction)touchBig:(id)sender {
    CGRect current = _butterflyImage.frame;
    CGRect rect = CGRectMake(current.origin.x, current.origin.y
                             , current.size.width + 10, current.size.width +10);
    _butterflyImage.frame = rect;
}

- (IBAction)touchSmall:(id)sender {
    CGRect rect = _butterflyImage.frame;
    rect.size.width -= 10;
    rect.size.height -= 10;
    _butterflyImage.frame = rect;
}

@end
