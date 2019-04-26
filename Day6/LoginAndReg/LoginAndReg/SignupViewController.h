//
//  SignupViewController.h
//  LoginAndReg
//
//  Created by Esraa Hassan on 4/25/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
@interface SignupViewController : UIViewController <UIAlertViewDelegate , MKMapViewDelegate , CLLocationManagerDelegate>
@property (weak, nonatomic) IBOutlet UITextField *fnameTF;
@property (weak, nonatomic) IBOutlet UITextField *lnameTF;
@property (weak, nonatomic) IBOutlet UITextField *emailTF;
@property (weak, nonatomic) IBOutlet UITextField *phoneTF;
@property (weak, nonatomic) IBOutlet UITextField *ageTF;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *longitudeLabel;
@property (weak, nonatomic) IBOutlet UILabel *latitudeLabel;
- (IBAction)signupBtn:(UIButton *)sender;
- (IBAction)browseBtn:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property CLLocationManager * locMgr ;

- (IBAction)gesture:(UITapGestureRecognizer *)sender;


@property NSString * imgName ;
@end
