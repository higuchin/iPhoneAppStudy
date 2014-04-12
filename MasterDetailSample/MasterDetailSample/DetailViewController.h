//
//  DetailViewController.h
//  MasterDetailSample
//
//  Created by yasuyuki on 2014/04/09.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end
