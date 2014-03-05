//
//  ViewController.m
//  ex_MyClass
//
//  Created by yasuyuki on 2014/03/04.
//  Copyright (c) 2014年 yasuyuki. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"
#import "Food.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *msgTextField;
@property (weak, nonatomic) IBOutlet UILabel *foodLabel;

- (IBAction)doChoice:(id)sender;
@end

@implementation ViewController
{
    Food *food;
    NSString *foodName;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    MyClass *myObj = [[MyClass alloc] init];
    myObj.where = @"神奈川";
    _msgTextField.text = [myObj hello:@"山田"];
    
    food = [[Food alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doChoice:(id)sender {
    if (food.counter < 3) {
        foodName = food.choiceFood;
        _foodLabel.text = [NSString stringWithFormat:@"%@ でどうだい？", foodName];
    } else {
        _foodLabel.text = [NSString stringWithFormat:@"%@ で決定！", foodName];        
    }
}
@end
