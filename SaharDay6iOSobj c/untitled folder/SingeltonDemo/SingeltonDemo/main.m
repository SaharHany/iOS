//
//  main.m
//  SingeltonDemo
//
//  Created by JETS Mobile Lab-10 on 5/2/19.
//  Copyright © 2019 iti. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DBManager.h"
int main(int argc, const char * argv[]) {
    //DBManager * dbMgr1 = [[DBManager alloc] init];
   // DBManager * dbMgr2 = [[DBManager alloc] init];
    //DBManager * dbMgr3 = [[DBManager alloc] init];
   
    DBManager * dbMgr1 = [DBManager sharedInstance] ;
    DBManager * dbMgr2 = [DBManager sharedInstance] ;
    DBManager * dbMgr3 = [DBManager sharedInstance] ;

    
    return 0;
}
