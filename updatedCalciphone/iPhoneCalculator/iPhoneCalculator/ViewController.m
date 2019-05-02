//
//  ViewController.m
//  iPhoneCalculator
//
//  Created by Esraa Hassan on 4/27/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "ViewController.h"
#import "Calculator.h"


@interface ViewController ()

@end

@implementation ViewController{
    bool operatorPressed ;
    float result ;
    NSString * x ;
    NSString * y ;
    NSString * oper;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [_boardLabel setText:@"0"];
    x = @"";
    y = @"";
    result = 0;
    operatorPressed = false;
    oper = @"";

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)acBtn:(UIButton *)sender {
    [_boardLabel setText:@"0"];
    operatorPressed = false;
    
}

- (IBAction)zeroBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(!check&&!operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"0"];
        
        [_boardLabel setText:str];
        [x stringByAppendingString:@"0"];

    }else if(!check && operatorPressed){
        if([oper isEqualToString:@"/"]){
            [_boardLabel setText:@"error"];
            operatorPressed = false;
        }else{
        [_boardLabel setText:@"0"];
        y = [_boardLabel text];
        }
    }
    /*
    if(!operatorPressed){
        [x stringByAppendingString:@"0"];
    }else{
        [y stringByAppendingString:@"0"];
    }
*/
}

- (IBAction)oneBtn:(UIButton *)sender {
   
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"1"];
        x = [_boardLabel text];
        
    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"1"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];
        
    }else if(!check && operatorPressed){
        [_boardLabel setText:@"1"];
        y = [_boardLabel text];
        
    }

}

- (IBAction)twoBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"2"];
        x = [_boardLabel text];
        
    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"2"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];
        
    }else if(!check && operatorPressed){
        [_boardLabel setText:@"2"];
        y = [_boardLabel text];
        
    }
    
}

- (IBAction)threeBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"3"];
        x = [_boardLabel text];
        
    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"3"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];
        
    }else if(!check && operatorPressed){
        [_boardLabel setText:@"3"];
        y = [_boardLabel text];
        
    }

}

- (IBAction)fourBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"4"];
        x = [_boardLabel text];
        
    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"4"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];
        
    }else if(!check && operatorPressed){
        [_boardLabel setText:@"4"];
        y = [_boardLabel text];
        
    }
}

- (IBAction)fiveBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"5"];
        x = [_boardLabel text];
        
    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"5"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];
        
    }else if(!check && operatorPressed){
        [_boardLabel setText:@"5"];
        y = [_boardLabel text];
        
    }
}

- (IBAction)sixBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"6"];
        x = [_boardLabel text];
        
    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"6"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];
        
    }else if(!check && operatorPressed){
        [_boardLabel setText:@"6"];
        y = [_boardLabel text];
        
    }

}

- (IBAction)sevenBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"7"];
        x = [_boardLabel text];
        
    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"7"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];
        
    }else if(!check && operatorPressed){
        [_boardLabel setText:@"7"];
        y = [_boardLabel text];
        
    }

}

- (IBAction)eightBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"8"];
        x = [_boardLabel text];

    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"8"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];

    }else if(!check && operatorPressed){
        [_boardLabel setText:@"8"];
        y = [_boardLabel text];

    }
    
}

- (IBAction)nineBtn:(UIButton *)sender {
    bool check = [_boardLabel.text isEqualToString:@"0"];
    if(check){
        [_boardLabel setText:@"9"];
        x = [_boardLabel text];
        
    }else if(!check && !operatorPressed){
        NSString * str = _boardLabel.text;
        str = [str stringByAppendingString:@"9"];
        
        [_boardLabel setText:str];
        x = [_boardLabel text];
        
    }else if(!check && operatorPressed){
        [_boardLabel setText:@"9"];
        y = [_boardLabel text];
        
    }
}

- (IBAction)decimalPtBtn:(UIButton *)sender {
    if(operatorPressed){
        bool check = [_boardLabel.text containsString:@"."];
        if(!check){
            NSString * str = _boardLabel.text;
            str = [str stringByAppendingString:@"."];
            [_boardLabel setText:str];
            y = [_boardLabel text];
        }
        
    }else if(!operatorPressed){
        
        bool check = [_boardLabel.text containsString:@"."];
        if(!check){
            NSString * str = _boardLabel.text;
            str = [str stringByAppendingString:@"."];
            [_boardLabel setText:str];
            x = [_boardLabel text];
        }
    }
}


- (IBAction)eqBtn:(UIButton *)sender {
    if(![y isEqualToString:@""]){
        [self calc:x :y];
        
    }
}


- (IBAction)plusBtn:(UIButton *)sender {
    if(operatorPressed){
        if([y isEqualToString:@""]){
            operatorPressed = true ;
            oper = @"+";
        }else{
            [self calc:x :y];
            operatorPressed = true ;
            oper = @"+";
        }
    }else{
        operatorPressed = true ;
        oper = @"+";

    }
    
    /* if(!operatorPressed){
        operatorPressed = true;
        oper = @"+";
        x = [_boardLabel text];
    }else{
        
        [self calc:x:y];
        operatorPressed = true ;
        oper = @"+";
        x = [_boardLabel text];
    }*/
}

- (IBAction)minusBtn:(UIButton *)sender {
    
    if(operatorPressed){
        if([y isEqualToString:@""]){
            operatorPressed = true ;
            oper = @"-";
        }else{
            [self calc:x :y];
            operatorPressed = true ;
            oper = @"-";
        }
    }else{
        operatorPressed = true ;
        oper = @"-";
        
    }
    
}

- (IBAction)multBtn:(UIButton *)sender {
    
    if(operatorPressed){
        if([y isEqualToString:@""]){
            operatorPressed = true ;
            oper = @"*";
        }else{
            [self calc:x :y];
            operatorPressed = true ;
            oper = @"*";
        }
    }else{
        operatorPressed = true ;
        oper = @"*";
        
    }
    
}

- (IBAction)divBtn:(UIButton *)sender {
    
    if(operatorPressed){
        if([y isEqualToString:@""]){
            operatorPressed = true ;
            oper = @"/";
        }else{
            [self calc:x :y];
            operatorPressed = true ;
            oper = @"/";
        }
    }else{
        operatorPressed = true ;
        oper = @"/";
        
    }
    
}

- (IBAction)percentBtn:(UIButton *)sender {
    float op1 = [[_boardLabel text] floatValue];
    result = op1 / 100;
    x = [NSString stringWithFormat:@"%f",result];
    [_boardLabel setText:x];
    
}

- (IBAction)revBtn:(UIButton *)sender {
    
    NSString * str = _boardLabel.text;
    bool checkZero = [_boardLabel.text isEqualToString:@"0"];
    if(!checkZero){
        NSString * checkSign = [_boardLabel.text substringToIndex:1];
        bool check = [checkSign isEqualToString:@"-"];
        if(check){
            str = [str substringFromIndex:1];
        
            [_boardLabel setText:str];
            if(!operatorPressed){
                x = [_boardLabel text];
            }else{
                y = [_boardLabel text];
            }
        
        }else{
            NSString * str = _boardLabel.text;
            str = [@"-" stringByAppendingString:str];
        
            [_boardLabel setText:str];
            if(!operatorPressed){
                x = [_boardLabel text];
            }else{
                y = [_boardLabel text];
            }
            
        }
        
    }
}

-(void) calc:(NSString*)num1 :(NSString*)num2{
    char operator = [oper characterAtIndex:0];
    bool xCheck = [x containsString:@"-"];
    bool yCheck = [y containsString:@"-"];
    float op1 = [x floatValue];
    float op2 = [y floatValue];
   
    switch (operator) {
        case '+':{
            result = [Calculator add:op1 :op2];
            [_boardLabel setText:[NSString stringWithFormat:@"%f",result]];
            break;
        }
        case '-':{
            result = [Calculator sub:op1 :op2];
            [_boardLabel setText:[NSString stringWithFormat:@"%f",result]];
            break;
        }
        case '*':{
            result = [Calculator mult:op1 :op2];
            [_boardLabel setText:[NSString stringWithFormat:@"%f",result]];
            break;
        }
        case '/':{
            result = [Calculator div:op1 :op2];
            [_boardLabel setText:[NSString stringWithFormat:@"%f",result]];
            break;
        }
        default:
            break;
    }
    operatorPressed = false ;
    operator = '+';
    y = @"";
    x = [_boardLabel text];
}

@end


/*
bool check = [_boardLabel.text isEqualToString:@"0"];
if(check){
    [_boardLabel setText:@"1"];
    if(!operatorPressed){
        x = @"1";
    }else{
        y = @"1";
    }
}else{
    NSString * str = _boardLabel.text;
    str = [str stringByAppendingString:@"1"];
    
    [_boardLabel setText:str];
    if(!operatorPressed){
        [x stringByAppendingString:@"1"];
    }else{
        [y stringByAppendingString:@"1"];
    }
    }
*/
