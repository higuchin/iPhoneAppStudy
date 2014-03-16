//
//  ViewController.m
//  SingleTapDoubleTapSample
//
//  Created by yasuyuki on 2014/03/16.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (void) singleTap:(UITapGestureRecognizer *)gesture;
- (void) doubleTap:(UITapGestureRecognizer *)gesture;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // シングルタップ
    UITapGestureRecognizer *singleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(singleTap:)];
    singleTapGesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:singleTapGesture];
    
    // ダブルタップ
    UITapGestureRecognizer *doubleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTap:)];
    doubleTapGesture.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:doubleTapGesture];

    // シングルタップの設定
    [singleTapGesture requireGestureRecognizerToFail:doubleTapGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) singleTap:(UITapGestureRecognizer *)gesture
{
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void) doubleTap:(UITapGestureRecognizer *)gesture
{
    if (self.view.backgroundColor == [UIColor redColor]) {
        self.view.backgroundColor = [UIColor blueColor];
    } else {
        self.view.backgroundColor = [UIColor redColor];
    }
}

@end
