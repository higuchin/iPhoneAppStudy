//
//  ViewController.m
//  ImageSample
//
//  Created by yasuyuki on 2014/03/08.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageHolder;
@property (weak, nonatomic) IBOutlet UIImageView *upperImage;
- (IBAction)switchImage:(UISwitch *)sender;
- (IBAction)upperImageSwitch:(UISwitch *)sender;

@end

@implementation ViewController
{
    UIImage *imageData;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    imageData = [UIImage imageNamed:@"Blossom.jpg"];
    _imageHolder.contentMode = UIViewContentModeScaleAspectFill;
    _imageHolder.backgroundColor = [UIColor lightGrayColor];
    _imageHolder.image = imageData;
    _imageHolder.clipsToBounds = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchImage:(UISwitch *)sender {
    if (sender.on == YES) {
        _imageHolder.image = imageData;
    } else {
        _imageHolder.image = nil;
    }
}

- (IBAction)upperImageSwitch:(UISwitch *)sender {
    _upperImage.hidden = !sender.on;
}
@end
