//
//  ViewController.h
//  iPhoneCalculator
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

- (IBAction)acBtn:(UIButton *)sender;

- (IBAction)zeroBtn:(UIButton *)sender;

- (IBAction)oneBtn:(UIButton *)sender;

- (IBAction)twoBtn:(UIButton *)sender;

- (IBAction)threeBtn:(UIButton *)sender;

- (IBAction)fourBtn:(UIButton *)sender;

- (IBAction)fiveBtn:(UIButton *)sender;

- (IBAction)sixBtn:(UIButton *)sender;

- (IBAction)sevenBtn:(UIButton *)sender;

- (IBAction)eightBtn:(UIButton *)sender;

- (IBAction)nineBtn:(UIButton *)sender;

- (IBAction)decimalPtBtn:(UIButton *)sender;

- (IBAction)eqBtn:(UIButton *)sender;

- (IBAction)plusBtn:(UIButton *)sender;

- (IBAction)minusBtn:(UIButton *)sender;

- (IBAction)multBtn:(UIButton *)sender;

- (IBAction)divBtn:(UIButton *)sender;

- (IBAction)percentBtn:(UIButton *)sender;

- (IBAction)revBtn:(UIButton *)sender;

@property (weak, nonatomic) IBOutlet UILabel *boardLabel;


@end

