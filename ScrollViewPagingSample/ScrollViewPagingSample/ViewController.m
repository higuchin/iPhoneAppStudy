//
//  ViewController.m
//  ScrollViewPagingSample
//
//  Created by yasuyuki on 2014/03/30.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"
#import "MyPage.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *pages =[NSMutableArray array];
    [pages addObject:@{@"imageName":@"Flower.jpg", @"caption":@"赤い花"}];
    [pages addObject:@{@"imageName":@"Sunset.jpg", @"caption":@"夕暮れの岩山"}];
    [pages addObject:@{@"imageName":@"Coast.jpg", @"caption":@"砂浜"}];
    [pages addObject:@{@"imageName":@"Lilies.jpg", @"caption":@"ユリの花"}];
    
    _pageControl.numberOfPages = pages.count;
    _pageControl.currentPage = 0;
    _pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    _pageControl.currentPageIndicatorTintColor = [UIColor blackColor];
    
    _scrollView.delegate = self;
    _scrollView.scrollEnabled = YES;
    _scrollView.pagingEnabled = YES;
    _scrollView.showsHorizontalScrollIndicator = NO;
    _scrollView.showsVerticalScrollIndicator = NO;
    _scrollView.backgroundColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.7 alpha:1.0];
    
    CGRect aFrame = _scrollView.frame;
    _scrollView.contentSize = CGSizeMake(aFrame.size.width * pages.count, aFrame.size.height);
    
    for (int i = 0; i  < pages.count; i++) {
        NSDictionary *pageDic = pages[i];
        NSString *imageName = pageDic[@"imageName"];
        NSString *caption = pageDic[@"caption"];
        
        CGRect pageFrame;
        pageFrame.origin.x = aFrame.size.width * i;
        pageFrame.origin.y = 0;
        pageFrame.size = aFrame.size;
        
        MyPage *page = [[MyPage alloc]initWithImageName:imageName frame:pageFrame caption:caption];
        [_scrollView addSubview:page];
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)scrollViewDidScroll:(UIScrollView *)sender
{
    CGFloat pageWidth = _scrollView.frame.size.width;
    int pageNo = floor((_scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    _pageControl.currentPage = pageNo;
}

@end
