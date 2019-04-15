//
//  ViewController.h
//  TextValidator
//
//  Created by JETS Mobile Lab on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UILabel *validate;

- (IBAction)validateLetter:(UIButton *)sender;

- (IBAction)Validate:(UIButton *)sender;

@end

