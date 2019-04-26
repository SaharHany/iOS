//
//  SigninViewController.h
//  LoginAndReg
//
//  Created by Esraa Hassan on 4/25/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SigninViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
- (IBAction)signinBtn:(UIButton *)sender;
-(void) clearPhone;
@end
