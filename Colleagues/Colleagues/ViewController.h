//
//  ViewController.h
//  Colleagues
//
//  Created by JETS Mobile Lab on 4/11/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSMutableArray *colleagues ;
    int position ;
}

- (IBAction)nextBtn:(UIButton *)sender;
- (IBAction)prevBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

