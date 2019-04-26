//
//  CustomCell.h
//  FriendsTableApp
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLab;
@property (weak, nonatomic) IBOutlet UILabel *ageLab;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end
