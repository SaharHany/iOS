//
//  ViewController.m
//  LoginAndReg
//
//  Created by Esraa Hassan on 4/25/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSUserDefaults * userDefaults;
    double longitude ;
    double latitude  ;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userDefaults = [NSUserDefaults standardUserDefaults];
    longitude    = [userDefaults   doubleForKey:@"longitude"] ;
    latitude     = [userDefaults    doubleForKey:@"latitude"] ;

    [self setData];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)signoutBtn:(UIButton *)sender {
    [_signinVC clearPhone];
    [self dismissViewControllerAnimated:YES completion:nil];

}

-(void) setData{
    [_fname setText:[userDefaults objectForKey:@"fname"]];
    [_lname setText:[userDefaults objectForKey:@"lname"]];
    [_email setText:[userDefaults objectForKey:@"email"]];
    [_phone setText:[userDefaults objectForKey:@"phone"]];
    [_imgView setImage:[UIImage imageNamed:[userDefaults objectForKey:@"img"]]];
    [_age setText:[userDefaults objectForKey:@"age"]];
    NSNumber *lo = [NSNumber numberWithDouble:longitude];
    NSNumber *la = [NSNumber numberWithDouble:latitude ];
    [_longitude setText:[lo stringValue ]];
    [_latitude  setText:[la stringValue]];
    
}


@end
