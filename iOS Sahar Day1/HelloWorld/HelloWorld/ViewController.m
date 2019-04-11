//
//  ViewController.m
//  HelloWorld
//
//  Created by JETS Mobile Lab on 4/11/19.
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


- (IBAction)showName:(UIButton *)sender {
    [_nameLabel setText:[_nameTF text]];
    NSLog(@"name = %@",[_nameTF text]);

    [_nameTF setText:@""];
}

- (IBAction)displayHelloWorld:(UIButton *)sender {
    [_nameLabel setText:@"HelloWorld"];    
    [_nameTF setText:@""];
}
@end
