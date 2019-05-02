//
//  DBManager.m
//  SingeltonDemo
//
//  Created by JETS Mobile Lab-10 on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import "DBManager.h"

@implementation DBManager
    static int counter=0;

- (instancetype)init
{
    self = [super init];
    if (self) {
        counter ++;
        printf("%d\n", counter);
    }
    return self;
}
+(DBManager*) sharedInstance{
    static DBManager* dbMgr;
    static dispatch_once_t oncePredicate ;
    dispatch_once(&oncePredicate, ^{
        dbMgr = [[DBManager alloc] init];
        printf("new Object is Created");
    });
    return dbMgr;
}

@end
