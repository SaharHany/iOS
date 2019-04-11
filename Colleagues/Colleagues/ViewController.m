//
//  ViewController.m
//  Colleagues
//
//  Created by JETS Mobile Lab on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"
#import "Colleague.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    Colleague *c1 = [Colleague new];
    [c1 setName:@"Sahar"];
    Colleague *c2 = [Colleague new];
    [c2 setName:@"Menna"];
    Colleague *c3 = [Colleague new];
    [c3 setName:@"Aliah"];
    Colleague *c4 = [Colleague new];
    [c4 setName:@"Nouran"];
    Colleague *c5 = [Colleague new];
    [c5 setName:@"Esraa"];
    Colleague *c6 = [Colleague new];
    [c6 setName:@"Salma"];
    Colleague *c7 = [Colleague new];
    [c7 setName:@"Radia"];

    colleagues = [NSMutableArray new];
    [colleagues addObject:c1];
    [colleagues addObject:c2];
    [colleagues addObject:c3];
    [colleagues addObject:c4];
    [colleagues addObject:c5];
    [colleagues addObject:c6];
    [colleagues addObject:c7];
    position = 0 ;

    NSString *nameColl = [[colleagues objectAtIndex:position] name] ;
    [ _nameLabel setText: nameColl];
    
    NSLog(@"name = %@",nameColl);

}


- (IBAction)nextBtn:(UIButton *)sender {

    position++;

    if(position > 6)
    {
        position = 0 ;
    }

    NSString *nameColl = [[colleagues objectAtIndex:position] name] ;
    [ _nameLabel setText: nameColl];
    
    NSLog(@"name = %@",nameColl);

}

- (IBAction)prevBtn:(UIButton *)sender {
   
    position--;

    if(position < 0)
    {
        position = 6 ;
    }
    
    NSString *nameColl = [[colleagues objectAtIndex:position] name] ;
    [ _nameLabel setText: nameColl];
    
    NSLog(@"name = %@",nameColl);
    
}


@end
