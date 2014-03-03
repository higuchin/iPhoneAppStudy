//
//  ViewController.m
//  CatAge
//
//  Created by yasuyuki on 2014/03/02.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *catField;
@property (weak, nonatomic) IBOutlet UILabel *humanLabel;

- (IBAction)calc:(id)sender;
- (IBAction)bkgTapped:(id)sender;

//- (double)catAgeToHumanAge:(double)catAge; // privateメソッドの宣言は省略可能

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

- (IBAction)calc:(id)sender {
    double catAge = [_catField.text doubleValue];
    double humanAge = [self catAgeToHumanAge:catAge];
    _humanLabel.text = [NSString stringWithFormat:@"%.1f 歳", humanAge];
}

- (IBAction)bkgTapped:(id)sender {
    [self.view endEditing:YES];
}

- (double)catAgeToHumanAge:(double)catAge {
    double result = 0;
    if (catAge <= 1) {
        result = 20 * catAge;
    } else if (catAge <= 5) {
        result = catAge * 6 + 15;
    } else if (catAge <= 10) {
        result = catAge * 5 + 20;
    } else if (catAge <= 15) {
        result = catAge * 4 + 30;
    } else {
        result = catAge * 3 + 45;
    }
    return result;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSMutableString *tmp = [_catField.text mutableCopy];
    [tmp replaceCharactersInRange:range withString:string];
    BOOL isAgeLimit = [tmp doubleValue] <= 100;
    BOOL isLengthLimit = [tmp length] <= 4;
    return isAgeLimit && isLengthLimit;
}
@end
