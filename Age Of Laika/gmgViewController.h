//
//  gmgViewController.h
//  Age Of Laika
//
//  Created by Greg Gauthier on 10/1/13.
//  Copyright (c) 2013 Greg Gauthier. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface gmgViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *yearsLabel;
@property (strong, nonatomic) IBOutlet UITextField *yearsTextField;
- (IBAction)convertToDogYearsButtonPressed:(UIButton *)sender;

@end
