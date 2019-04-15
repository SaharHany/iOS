//
//  ViewController2.m
//  NavApp
//
//  Created by JETS Mobile Lab on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController2.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UIBarButtonItem *barItem = [[UIBarButtonItem alloc] initWithTitle:@"FirstView" style: UIBarButtonItemStyleDone target:self action:@selector(backToFirstView)];
    [self.navigationItem setRightBarButtonItem:barItem];
    [self setTitle:@"SecondView"];
    [_showLabel setText:_str];
    
    
}

-(void)backToFirstView{
    [_view1 clearTF];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
