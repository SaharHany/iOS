//
//  TableViewController.m
//  ColleaguesTableApp
//
//  Created by JETS Mobile Lab on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "TableViewController.h"
#import "Colleague.h"
#import "ViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController{
    NSMutableArray *males ;
    NSMutableArray *females ;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    Colleague *c1 = [Colleague new];
    [c1 setName:@"Sahar"];
    [c1 setAge:@"22"];
    [c1 setEmail:@"sahar96hany@gmail.com"];
    [c1 setPhone:@"01121668135"];
    [c1 setGender:@"female"];
    [c1 setAddress:@"giza"];
    
    
    
    Colleague *c2 = [Colleague new];
    [c2 setName:@"Menna"];
    [c2 setAge:@"24"];
    [c2 setEmail:@"menna@gmail.com"];
    [c2 setPhone:@"01121668124"];
    [c2 setGender:@"female"];
    [c2 setAddress:@"giza"];
    
    Colleague *c3 = [Colleague new];
     [c3 setName:@"Amr"];
     [c3 setAge:@"24"];
     [c3 setEmail:@"amr@gmail.com"];
     [c3 setPhone:@"01121668122"];
     [c3 setGender:@"male"];
     [c3 setAddress:@"cairo"];
     
    Colleague *c4 = [Colleague new];
    [c4 setName:@"Ashraf"];
     [c4 setAge:@"22"];
     [c4 setEmail:@"ashraf@gmail.com"];
     [c4 setPhone:@"01121668132"];
     [c4 setGender:@"male"];
     [c4 setAddress:@"cairo"];
   
    
    colleagues = [NSMutableArray new];
    [colleagues addObject:c1];
    [colleagues addObject:c2];
    [colleagues addObject:c3];
    [colleagues addObject:c4];
    
    males = [NSMutableArray new];
    females = [NSMutableArray new];
    
    [females addObject:c1];
    [females addObject:c2];
    
    [males addObject:c3];
    [males addObject:c4];
    
    //NSLog("%@",[females objectAtIndex:1] );

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    NSUInteger rowsNum = 0;
    switch (section) {
        case 0:
            rowsNum = [females count];
            break;
        case 1:
            rowsNum = [males count];
            break;
        default:
            break;
    }
    return rowsNum;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = [[females objectAtIndex:indexPath.row] name];
            cell.detailTextLabel.text = @"detailed";
            break;
        case 1:
            cell.textLabel.text = [[males objectAtIndex:indexPath.row] name];
            cell.detailTextLabel.text = @"detailed";
            break;
        default:
            break;
    }
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return @"Females";
            break;
        case 1:
            return @"Males";
            break;
        default:
            return @"";
            break;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    ViewController *viewCon = [self.storyboard instantiateViewControllerWithIdentifier:@"viewc"];
    switch (indexPath.section) {
        case 0:{
            viewCon.coll = [females objectAtIndex:indexPath.row];
            [self.navigationController pushViewController:viewCon animated:NO];

            break;
            
        }
        case 1:{
            viewCon.coll = [males objectAtIndex:indexPath.row];
            [self.navigationController pushViewController:viewCon animated:NO];

            break;}
        default:
            break;
    }
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
