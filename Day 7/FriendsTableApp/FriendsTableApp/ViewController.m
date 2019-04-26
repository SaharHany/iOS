//
//  ViewController.m
//  FriendsTableApp
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"
@interface ViewController ()

@end

@implementation ViewController{
    NSArray * nameArray ;
    NSArray * ageArray;
    NSArray * imgArray ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _custTableView.dataSource = self ;
    _custTableView.delegate = self ;
    nameArray = @[@"Sahar",@"Menna",@"Aliah"] ;
    ageArray  = @[@"22",@"24",@"23"] ;
    imgArray  = @[@"woman1.png",@"woman2.png",@"woman3.png"] ;
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [nameArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    CustomCell *custCell = [tableView dequeueReusableCellWithIdentifier:@"cell"forIndexPath:indexPath];

    UILabel * nameLabel = [custCell viewWithTag:1] ;
    UIImageView * img = [custCell viewWithTag:2];
    UILabel * ageLabel = [custCell viewWithTag:3] ;

    [nameLabel setText:[nameArray objectAtIndex:indexPath.row]];
    [ageLabel setText:[ageArray objectAtIndex:indexPath.row]];
    [img setImage:[UIImage imageNamed:[nameArray objectAtIndex:indexPath.row]]];

    return custCell;
}

@end
