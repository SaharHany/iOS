//
//  ViewController.h
//  AlertDemo
//
//  Created by JETS Mobile Lab-10 on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIImagePickerControllerDelegate>
- (IBAction)showBtn:(UIButton *)sender;
- (IBAction)tskePhotoBtn:(UIButton *)sender;
- (IBAction)choosePhotoBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;


@end

