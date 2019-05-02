//
//  Book.h
//  NSCodingDemo
//
//  Created by JETS Mobile Lab-10 on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject <NSCoding>
@property NSString * title;
@property NSString * subtitle;
@property int papers;


@end

NS_ASSUME_NONNULL_END
