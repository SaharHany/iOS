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
    int x ;
    int y ;
    char operator ;
    int res ;
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
    
    x = [[_xTF text] intValue];
    y = [[_yTF text] intValue];
    operator = [[_operatorTF text] characterAtIndex:0];
    
    switch(operator){
    case'+':
        res = [Calculator add:x : y];
        break;
    case'-':
        res = [Calculator sub:x : y];
        break;
    case'*':
        res = [Calculator mult:x : y];
        break;
    case'/':
        res = [Calculator div:x : y];

        break;
    }
    
    NSString *resultVal = [NSString stringWithFormat:@"%d",res];
    [_resultLabel setText:resultVal];
        

}


@end
