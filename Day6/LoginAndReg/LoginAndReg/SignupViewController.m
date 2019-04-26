//
//  SignupViewController.m
//  LoginAndReg
//
//  Created by Esraa Hassan on 4/25/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "SignupViewController.h"
#import "GalleryTableViewController.h"
#import "LocationAnnotation.h"

@interface SignupViewController ()

@end

@implementation SignupViewController{
    NSUserDefaults * userDefaults;
    double longitude;
    double latitude ;
    //CLLocationCoordinate2D coord;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [_mapView setZoomEnabled:YES];
    [_mapView setDelegate:self];
    _locMgr = [CLLocationManager new];
    [_locMgr startUpdatingLocation];
    [_locMgr setDistanceFilter:kCLHeadingFilterNone];
    [_locMgr setDesiredAccuracy:kCLLocationAccuracyBest];
    [_locMgr setDelegate:self];
    [_locMgr requestAlwaysAuthorization];
    longitude = _locMgr.location.coordinate.longitude;
    latitude  = _locMgr.location.coordinate.latitude;
    //coord = _locMgr.location.coordinate ;
    
    [self updateLongLat];


    userDefaults = [NSUserDefaults standardUserDefaults];
    _imgName = @"man1.png";
    _imgView.image = [UIImage imageNamed:_imgName];

}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)mapView:(MKMapView *)mapView didSelectAnnotationView:(MKAnnotationView *)view{
    printf("didSelectAnnotationView");
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)signupBtn:(UIButton *)sender {
    NSString * fname = [_fnameTF text];
    NSString * lname = [_lnameTF text];
    NSString * email = [_emailTF text];
    NSString * phone = [_phoneTF text];
    
    NSString * img = _imgName;
    NSString * age = [_ageTF text];

    bool fnameCheck = (![fname isEqualToString:@""])&& (fname!=nil);
    bool lnameCheck = (![lname isEqualToString:@""])&& (lname!=nil);
    bool emailCheck = (![email isEqualToString:@""])&& (email!=nil);
    bool phoneCheck = (![phone isEqualToString:@""])&& (phone!=nil);
    //bool longitudeCheck = (![longitude isEqualToString:@""])&& (longitude!=nil);
    //bool latitudeCheck = (![latitude isEqualToString:@""])&& (latitude!=nil);
    bool ageCheck = (![age isEqualToString:@""])&& (age!=nil);
    bool imgCheck = (![img isEqualToString:@""])&& (img!=nil);
    
    if(fnameCheck&&lnameCheck&&emailCheck&&phoneCheck&&ageCheck&&imgCheck){
        
        [userDefaults setObject:phone forKey:@"phone"];
        [userDefaults setObject:fname forKey:@"fname"];
        [userDefaults setObject:lname forKey:@"lname"];
        [userDefaults setObject:email forKey:@"email"];
        [userDefaults setObject:age forKey:@"age"];
        [userDefaults setObject:img forKey:@"img"];
        [userDefaults setDouble:longitude forKey:@"longitude"];
        [userDefaults setDouble:latitude  forKey:@"latitude"];
       // [userDefaults setValue:coord forKey:@"coord"];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registered Successfully" message:@"Registeration done Successfully" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alert show];
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registeration Failed" message:@"Fill in all fields" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK",@"Try Again", nil];
        [alert show];

    }
    
}

- (IBAction)browseBtn:(UIButton *)sender {
  //  GalleryTableViewController * gallery = [self.storyboard instantiateViewControllerWithIdentifier:@"gallery"];
   // gallery.signupVC = self;
   // [self.navigationController pushViewController:gallery animated:NO];
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    
    if([segue.identifier isEqualToString:@"browseSegue"]){
        GalleryTableViewController * gallery = segue.destinationViewController;
        gallery.signupVC = self ;
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==0){
        printf("OK Btn");
    }else if (buttonIndex==1){
        [self clearForm];
        printf("tryagain btn");
    }
}

-(void) clearForm{
    [_fnameTF setText:@""];
    [_lnameTF setText:@""];
    [_emailTF setText:@""];
    [_phoneTF setText:@""];
    [_longitudeLabel setText:@""];
    [_latitudeLabel setText:@""];
    _imgName = @"man1.png";
    [_imgView setImage:[UIImage imageNamed:_imgName]];
    [_ageTF setText:@""];
}
- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    printf("regionWillChangeAnimated\n");
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    printf("regionDidChangeAnimated\n");

}

- (IBAction)gesture:(UITapGestureRecognizer *)sender {
    CGPoint touchPoint = [sender locationInView:_mapView];

    CLLocationCoordinate2D coordinate = [_mapView convertPoint:touchPoint toCoordinateFromView:_mapView];
    LocationAnnotation * annotation = [LocationAnnotation new];
    annotation.coordinate = coordinate;
    annotation.title = @"Current Location";
    annotation.subtitle = @"My Location";
    
    [_mapView removeAnnotations:_mapView.annotations];
    [_mapView addAnnotation:annotation];
    
    latitude = coordinate.latitude;
    longitude = coordinate.longitude;
    [self updateLongLat];
}

# pragma mark : Location Manager
- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations
{
    CLLocation * location = [locations lastObject];
    printf("didUpdateLocations \n");
    printf("%f \n" ,location.coordinate.latitude);
    printf("%f \n" ,location.coordinate.longitude);
    longitude = location.coordinate.longitude;
    latitude  = location.coordinate.latitude;
    //coord = _locMgr.location.coordinate ;
    
    [self updateLongLat];
    CLLocationCoordinate2D coordinate = manager.location.coordinate;
    LocationAnnotation * annotation = [LocationAnnotation new];
    annotation.coordinate = coordinate;
    annotation.title = @"Current Location";
    annotation.subtitle = @"My Location";
    
    [_mapView removeAnnotations:_mapView.annotations];
    
    [_mapView addAnnotation:annotation];


}

-(void) updateLongLat{
    NSNumber *lo = [NSNumber numberWithDouble:longitude];
    NSNumber *la = [NSNumber numberWithDouble:latitude ];
    [_longitudeLabel setText:[lo stringValue ]];
    [_latitudeLabel setText:[la stringValue]];
}
@end
