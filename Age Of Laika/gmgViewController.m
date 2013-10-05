//
//  gmgViewController.m
//  Age Of Laika
//
//  Created by Greg Gauthier on 10/1/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import "gmgViewController.h"

@interface gmgViewController ()

@end

@implementation gmgViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)convertToDogYearsButtonPressed:(UIButton *)sender
{
    
    int humanYears = [self.yearsTextField.text intValue];
    int dogYears = humanYears * 7;
    self.yearsLabel.text = [NSString stringWithFormat:@"%i", dogYears];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.yearsTextField resignFirstResponder];
}

@end
