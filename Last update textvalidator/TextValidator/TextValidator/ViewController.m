//
//  ViewController.m
//  TextValidator
//
//  Created by JETS Mobile Lab on 4/13/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)validateLetter:(UIButton *)sender {
    NSString *checkText = [_text text];
    NSCharacterSet *validChars = [NSCharacterSet characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"];
    validChars = [validChars invertedSet];
    if([checkText rangeOfCharacterFromSet:validChars].location != NSNotFound){
        [_validate setText:@"not pure letter Text"];
    }else{
        [_validate setText:@"pure letter Text"];
        
    }
}

- (IBAction)Validate:(UIButton *)sender {
    NSString *checkText = [_text text];
    NSCharacterSet *num = [NSCharacterSet decimalDigitCharacterSet];
    NSString *trimStr = [checkText stringByTrimmingCharactersInSet:num];
    if((trimStr.length == 0)&&(checkText >0))
    {
        [_validate setText:@"Pure Number Text"];
    }else{
        [_validate setText:@"not Pure Number Text"];
        
    }

}
@end
