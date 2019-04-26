//
//  SigninViewController.m
//  LoginAndReg
//
//  Created by Esraa Hassan on 4/25/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "SigninViewController.h"
#import "ViewController.h"
@interface SigninViewController ()

@end

@implementation SigninViewController
{
    NSUserDefaults * userDefaults;

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    userDefaults = [NSUserDefaults standardUserDefaults];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([segue.identifier isEqualToString:@"signinSegue"]){
        ViewController * profile = segue.destinationViewController;
        profile.signinVC = self ;
    }
}


- (IBAction)signinBtn:(UIButton *)sender {
    NSString * phone = [_phoneTF text];
    NSString * phoneUserDefaults = [userDefaults objectForKey:@"phone"];
    if([phone isEqualToString:phoneUserDefaults]){
       
        [self performSegueWithIdentifier:@"signinSegue" sender:self];
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Signing in Failed" message:@"Please Enter correct Phone Number" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK",@"Try Again", nil];
        [alert show];
    }
}

-(void) clearPhone{
    [_phoneTF setText:@""];
}


@end

/*
 UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Signed In Successfully" message:@"Signing in done Successfully" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
 [alert show];
*/
/*
user.fname = fname;
user.lname = lname;
user.email = email;
user.phone = phone;
user.latitude = latitude;
user.longtiude = longitude;
user.age = age ;
user.imgName = img ;*/
