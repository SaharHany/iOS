//
//  ViewController.m
//  NSCodingDemo
//
//  Created by JETS Mobile Lab-10 on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
@interface ViewController ()

@end

@implementation ViewController
{
    NSUserDefaults * userDefaults;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    userDefaults = [NSUserDefaults standardUserDefaults];
}




- (IBAction)saveBtn:(UIButton *)sender {
    Book * book = [[Book alloc]init];
    book.title = @"MY Title";
    book.subtitle = @"My Subtitle";
    book.papers = 100;
    NSData * data = [NSKeyedArchiver archivedDataWithRootObject:(book)];
    [userDefaults setObject:data forKey:@"book"];
}

- (IBAction)loadBtn:(UIButton *)sender {
   
    NSData * data = [userDefaults objectForKey:@"book"];
    
    Book * book = [NSKeyedUnarchiver unarchiveObjectWithData:data];
    [_displayData setText:[book title]];
    
}
@end
