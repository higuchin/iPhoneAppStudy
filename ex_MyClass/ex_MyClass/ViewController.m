//
//  ViewController.m
//  ex_MyClass
//
//  Created by yasuyuki on 2014/03/04.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *msgTextField;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MyClass *myObj = [[MyClass alloc] init];
    myObj.where = @"神奈川";
    _msgTextField.text = [myObj hello:@"山田"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
