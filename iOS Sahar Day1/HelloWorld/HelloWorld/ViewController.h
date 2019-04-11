//
//  ViewController.h
//  HelloWorld
//
//  Created by JETS Mobile Lab on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITextField *nameTF;
- (IBAction)showName:(UIButton *)sender;

- (IBAction)displayHelloWorld:(UIButton *)sender;

@end

