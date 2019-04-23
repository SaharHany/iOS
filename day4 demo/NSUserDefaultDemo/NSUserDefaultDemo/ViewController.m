//
//  ViewController.m
//  NSUserDefaultDemo
//
//  Created by Esraa Hassan on 4/22/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
- (IBAction)saveBtn:(UIButton *)sender;
- (IBAction)getBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;



@end

@implementation ViewController{
    NSUserDefaults * userDefaults ;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userDefaults = [NSUserDefaults standardUserDefaults];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)saveBtn:(UIButton *)sender {
    NSString * name = [_usernameTF text];
    userDefaults = [NSUserDefaults];
}

- (IBAction)getBtn:(UIButton *)sender {
}
@end
