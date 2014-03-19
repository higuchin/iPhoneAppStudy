//
//  ViewController.m
//  AlertTextSample
//
//  Created by yasuyuki on 2014/03/19.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)tapBottan:(id)sender;

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

- (IBAction)tapBottan:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"パスワードを入れてください" message:@"英数6文字です" delegate:self cancelButtonTitle:@"キャンセル" otherButtonTitles:@"OK", nil];
    alert.alertViewStyle = UIAlertViewStyleSecureTextInput;
    [alert show];
}

- (BOOL) alertViewShouldEnableFirstOtherButton:(UIAlertView *)alertView
{
    UITextField *textField = [alertView textFieldAtIndex:0];
    if (textField.text.length >= 6) {
        return YES;
    } else {
        return NO;
    }
}

- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        UITextField *textField = [alertView textFieldAtIndex:0];
        NSLog(@"%@", textField.text);
    }
}
@end
