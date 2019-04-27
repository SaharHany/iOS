//
//  DataRetreiver.m
//  ImageCollecion
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "DataRetreiver.h"

@implementation DataRetreiver
{
    NSMutableArray * urls ;
    NSMutableData  * dataRec ;
    NSString * webServiceUrlStr ;
    NSURL * url ;
    NSURLRequest * request;
    NSURLConnection * conn;
}



-(void) startConn{
    webServiceUrlStr = @"https://api.androidhive.info/json/movies.json" ;
    url = [NSURL URLWithString:webServiceUrlStr];
    request = [NSURLRequest requestWithURL:url];
    
    conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [conn start];
}

-(NSMutableArray *) getUrls{
    return urls ;
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    dataRec =[NSMutableData new];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [dataRec appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSArray * films = [NSJSONSerialization JSONObjectWithData:dataRec options:NSJSONReadingAllowFragments error:nil];
    urls = [NSMutableArray new];
    for(int i=0;i<[films count];i++){
        NSString * img = [[films objectAtIndex:i] objectForKey:@"image"];
        [urls addObject:img];
        NSLog(@"%@",img);
    }
    
}
@end
