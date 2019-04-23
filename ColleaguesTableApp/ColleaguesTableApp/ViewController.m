//
//  ViewController.m
//  ColleaguesTableApp
//
//  Created by JETS Mobile Lab on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_nameLabel setText:[_coll name]];
    [_addressLabel setText:[_coll address]];
    [_genderLabel setText:[_coll gender]];
    [_ageLabel setText:[_coll age]];
    [_emailLabel setText:[_coll email]];
    [_phoneLabel setText:[_coll phone]];

    // Do any additional setup after loading the view, typically from a nib.
}


@end
