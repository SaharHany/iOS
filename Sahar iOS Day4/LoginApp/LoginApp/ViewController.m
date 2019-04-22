//
//  ViewController.m
//  LoginApp
//
//  Created by JETS Mobile Lab on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
- (IBAction)signinBtn:(UIButton *)sender;

@end

@implementation ViewController{
    NSUserDefaults *userDefaults ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:@"SaharHany" forKey:@"username"];
    [userDefaults setObject:@"123456" forKey:@"password"];
    [userDefaults synchronize];
    
    
}


- (IBAction)signinBtn:(UIButton *)sender {
    NSString * username = [_usernameTF text];
    NSString * password = [_passwordTF text];
    
    NSString * usernameUD = [userDefaults objectForKey:@"username"];
    NSString * passwordUD = [userDefaults objectForKey:@"password"];
  
    if([username isEqualToString:usernameUD] && [password isEqualToString:passwordUD]){
        printf("signin successfully");
        SecondViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"secondvc"];
        [self.navigationController pushViewController:secondVC animated:NO];

    }else{
        printf("signin failed");

    }
    
}
@end
