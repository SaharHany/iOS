//
//  User.h
//  LoginAndReg
//
//  Created by Esraa Hassan on 4/25/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
@interface User : NSObject
@property NSString * fname ;
@property NSString * lname ;
@property NSString * email ;
@property NSString * phone ;
@property NSString * age ;
@property double  longitude ;
@property double  latitude ;
@property NSString * imgName ;
//@property CLLocationCoordinate2D coord ;
@end
