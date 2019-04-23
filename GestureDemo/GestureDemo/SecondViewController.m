//
//  SecondViewController.m
//  GestureDemo
//
//  Created by Esraa Hassan on 4/22/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()
- (IBAction)dismiss:(UIButton *)sender;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UISwipeGestureRecognizer *rec = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(previous)];
    
    rec.direction = UISwipeGestureRecognizerDirectionRight ;
    [self.view addGestureRecognizer:rec];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void) previous{
    //_myview.backgroundColor = UIColor.cyanColor ;
    printf("swiped\n");
    //ViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"first"];
  //  [secondVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
 //   [self presentViewController:secondVC animated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];

    
}


- (IBAction)dismiss:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
