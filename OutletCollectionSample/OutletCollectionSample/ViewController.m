//
//  ViewController.m
//  OutletCollectionSample
//
//  Created by yasuyuki on 2014/03/02.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutletCollection(UITextField) NSArray *colorNames;
@property (weak, nonatomic) IBOutlet UILabel *wordLabel;
- (IBAction)touchWordButton:(UIButton *)sender;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    for (UITextField *colorName in _colorNames) {
        colorName.placeholder = @"お名前は？";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchWordButton:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            _wordLabel.text = @"flower";
            break;
        case 1:
            _wordLabel.text = @"bird";
            break;
        case 2:
            _wordLabel.text = @"wind";
            break;
        case 3:
            _wordLabel.text = @"moon";
            break;
        default:
            _wordLabel.text = @"English";
            break;
    }
}
@end
