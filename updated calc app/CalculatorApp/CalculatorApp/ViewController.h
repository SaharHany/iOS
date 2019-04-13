//
//  ViewController.h
//  CalculatorApp
//
//  Created by Esraa Hassan on 4/13/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *xTF;
@property (weak, nonatomic) IBOutlet UITextField *operatorTF;

@property (weak, nonatomic) IBOutlet UITextField *yTF;
- (IBAction)calcBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;


@end

