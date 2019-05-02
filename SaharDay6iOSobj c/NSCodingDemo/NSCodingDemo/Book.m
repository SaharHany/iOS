//
//  Book.m
//  NSCodingDemo
//
//  Created by JETS Mobile Lab-10 on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "Book.h"

@implementation Book
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:_title forKey:@"title"];
    [aCoder encodeObject:_subtitle forKey:@"subtitle"];
    [aCoder encodeInt:_papers forKey:@"papers"];

}
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self.title = [aDecoder decodeObjectForKey:@"title"];
    self.subtitle = [aDecoder decodeObjectForKey:@"subtitle"];
    self.papers = [aDecoder decodeIntForKey:@"papers"];

    return self;
}
@end
