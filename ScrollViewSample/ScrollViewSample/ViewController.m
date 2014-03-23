//
//  ViewController.m
//  ScrollViewSample
//
//  Created by yasuyuki on 2014/03/23.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    _scrollView.delegate = self;
    
    _scrollView.maximumZoomScale = 8;
    _scrollView.minimumZoomScale = 1;
    
    _scrollView.scrollEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator = YES;
    _scrollView.showsVerticalScrollIndicator = YES;
    
    UITapGestureRecognizer *doubleTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(doubleTap:)];
    doubleTapGesture.numberOfTapsRequired = 2;
    _imageView.userInteractionEnabled = YES;
    [_imageView addGestureRecognizer:doubleTapGesture];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return _imageView;
}

- (void)doubleTap:(UITapGestureRecognizer *)gesture
{
    if (_scrollView.zoomScale < _scrollView.maximumZoomScale)
    {
        float newScale = _scrollView.zoomScale * 3;
        CGRect zoomRect = [self zoomRectForScale:newScale withCenter:[gesture locationInView:gesture.view]];
        [_scrollView zoomToRect:zoomRect animated:YES];
    } else
    {
        [_scrollView setZoomScale:1.0 animated:YES];
    }
}

- (CGRect)zoomRectForScale:(float) scale withCenter:(CGPoint) center
{
    CGRect zoomRect;
    
    zoomRect.size.height = [_scrollView frame].size.height / scale;
    zoomRect.size.width = [_scrollView frame].size.width / scale;
    
    zoomRect.origin.x = center.x - (zoomRect.size.width / 2.0);
    zoomRect.origin.y = center.y - (zoomRect.size.height / 2.0);
    
    return zoomRect;
    
}
@end
