//
//  ViewController.m
//  AlertDemo
//
//  Created by JETS Mobile Lab-10 on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)showBtn:(UIButton *)sender {
    UIAlertController * alertCon = [UIAlertController alertControllerWithTitle:@"Hello" message:@"This is an alert" preferredStyle:UIAlertControllerStyleActionSheet];
    
    UIAlertAction * okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        printf("OK\n");
    }];
    
    UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        printf("Cancel\n");
    }];

    [alertCon addAction:okAction];
    [alertCon addAction:cancelAction];
    [self presentViewController:alertCon animated:YES completion:nil];

}

- (IBAction)tskePhotoBtn:(UIButton *)sender {
   
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
         UIImagePickerController * picker = [UIImagePickerController new] ;
    picker.allowsEditing = YES ;
    picker.delegate = self ;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
        [self presentViewController:picker animated:YES completion:nil];
        
    }else{
        UIAlertController * alertCon = [UIAlertController alertControllerWithTitle:@"Error" message:@"This is an alert" preferredStyle:UIAlertControllerStyleActionSheet];
        
        UIAlertAction * okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            printf("OK\n");
        }];
        
        UIAlertAction * deleteAction = [UIAlertAction actionWithTitle:@"Delete" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * _Nonnull action) {
            printf("Delete\n");
        }];
        
        UIAlertAction * cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
            printf("Cancel\n");
        }];
        
        [alertCon addAction:okAction];
        [alertCon addAction:deleteAction];
        [alertCon addAction:cancelAction];
        [self presentViewController:alertCon animated:YES completion:nil];
        
    }
}

- (IBAction)choosePhotoBtn:(UIButton *)sender {
    UIImagePickerController * picker = [UIImagePickerController new] ;
    picker.allowsEditing = YES ;
    picker.delegate = self ;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:picker animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info{
    _imgView.image = info[UIImagePickerControllerEditedImage] ;
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
