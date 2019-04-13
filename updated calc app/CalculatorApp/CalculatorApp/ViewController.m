//
//  ViewController.m
//  CalculatorApp
//
//  Created by Esraa Hassan on 4/13/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"
@interface ViewController ()
{
    float x ;
    float y ;
    char operator ;
    float res ;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)calcBtn:(UIButton *)sender {
    
    x = [[_xTF text] floatValue];
    y = [[_yTF text] floatValue];
    operator = [[_operatorTF text] characterAtIndex:0];
    NSString *resultVal ;
    switch(operator){
    case'+':
        res = [Calculator add:x : y];
            resultVal = [NSString stringWithFormat:@"%f",res];

        break;
    case'-':
        res = [Calculator sub:x : y];
            resultVal = [NSString stringWithFormat:@"%f",res];

        break;
    case'*':
        res = [Calculator mult:x : y];
            resultVal = [NSString stringWithFormat:@"%f",res];

        break;
    case'/':
        if(y!=0){
            res = [Calculator div:x : y];
            resultVal = [NSString stringWithFormat:@"%f",res];

            }
        else{
            resultVal = @"Error";

        }
        break;
    }
    
    [_resultLabel setText:resultVal];
        

}


@end
