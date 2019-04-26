//
//  ViewController.h
//  FriendsTableApp
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *custTableView;

@end

