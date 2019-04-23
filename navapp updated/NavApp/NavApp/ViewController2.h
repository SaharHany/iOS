//
//  ViewController2.h
//  NavApp
//
//  Created by JETS Mobile Lab on 4/15/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
#import "ClearTextField.h"
NS_ASSUME_NONNULL_BEGIN

@interface ViewController2 : UIViewController
@property id<ClearTextField> view1 ;
@property NSString *str ;

@property (weak, nonatomic) IBOutlet UILabel *showLabel;


@end

NS_ASSUME_NONNULL_END
