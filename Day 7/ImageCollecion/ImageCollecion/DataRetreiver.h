//
//  DataRetreiver.h
//  ImageCollecion
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataRetreiver : NSObject <NSURLConnectionDelegate ,NSURLConnectionDataDelegate>
-(void) startConn;
-(NSMutableArray*) getUrls;

@end
