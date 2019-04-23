//
//  ViewController.m
//  Sync&AsyncDmo
//
//  Created by JETS Mobile Lab on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
- (IBAction)syncAction:(UIButton *)sender;

- (IBAction)asyncAction:(UIButton *)sender;

@end

@implementation ViewController{
    
    NSURL * url;
    NSURLRequest * request;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    url = [NSURL URLWithString:@"https://maktoob.yahoo.com"];
}


- (IBAction)syncAction:(UIButton *)sender {
    NSString *str = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    self.webView.delegate = self ;
    [self.webView loadHTMLString:str baseURL:url];
}

- (IBAction)asyncAction:(UIButton *)sender {
    request = [NSURLRequest requestWithURL:url];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    [connection start];
    
    
}
- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    self.webView.delegate = self ;
    [self.webView loadRequest:request];
}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}
@end
