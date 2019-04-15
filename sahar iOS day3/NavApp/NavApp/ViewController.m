//
//  ViewController.m
//  NavApp
//
//  Created by JETS Mobile Lab on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "ViewController2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)showBtn:(UIButton *)sender {
    ViewController2 *viewCon2 = [self.storyboard instantiateViewControllerWithIdentifier:@"secondViewId"];
    NSString *helloStr = @"Hello ya ";
    NSString *name = [_nameTF text];
    NSString *msg = [helloStr stringByAppendingString:name];
    [viewCon2 setStr:msg];
     viewCon2.view1  = self;
    [self.navigationController pushViewController:viewCon2 animated:NO];
                      
}

- (void) clearTF {
    [_nameTF setText:@""];
}

@end
