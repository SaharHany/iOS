//
//  ViewController.m
//  GestureDemo
//
//  Created by Esraa Hassan on 4/22/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "ViewController.h"

#import "SecondViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *myview;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UISwipeGestureRecognizer *rec = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(next)];
    
    rec.direction = UISwipeGestureRecognizerDirectionLeft ;
    [_myview addGestureRecognizer:rec];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) next{
    //_myview.backgroundColor = UIColor.cyanColor ;
    printf("swiped\n");
    SecondViewController *secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"second"];
    [secondVC setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
    [self presentViewController:secondVC animated:YES completion:nil];
    
}

@end
