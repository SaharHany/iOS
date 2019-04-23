//
//  ViewController.h
//  NavApp
//
//  Created by JETS Mobile Lab on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ClearTextField.h"
@interface ViewController : UIViewController <ClearTextField>
@property (weak, nonatomic) IBOutlet UITextField *nameTF;

- (IBAction)showBtn:(UIButton *)sender;
@end

