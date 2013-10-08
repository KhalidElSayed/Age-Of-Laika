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
    self.yearsTextField.KeyboardType = UIKeyboardTypeDecimalPad;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)convertToDogYearsButtonPressed:(UIButton *)sender
{
    
    float humanYears = [self.yearsTextField.text floatValue];
    float dogYears = 0; //required for conditional evaluation later

    //better way of calculating dogs age
    if (humanYears <=  2) {
        dogYears = humanYears * 10.5;
    }
    else if (humanYears > 2){
        //first two years as normal, then subtract those two years
        //from the input and multiply result by 4. Then add the two remainders together.
        dogYears = (10.5 * 2) + (humanYears-2)*4;
    }
    //%g gives us a nicely formated floating point.
    self.yearsLabel.text = [NSString stringWithFormat:@"%g", dogYears];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.yearsTextField resignFirstResponder];
}

@end
