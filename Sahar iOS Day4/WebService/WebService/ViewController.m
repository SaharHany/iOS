//
//  ViewController.m
//  WebService
//
//  Created by JETS Mobile Lab on 4/23/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    NSMutableData * dataReceived;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (IBAction)regBtn:(UIButton *)sender {
    NSString * urlStr = @"http://jets.iti.gov.eg/FriendsApp/services/user/register?nae=yourName&phone=yourPhone";
    NSString * urlWithData = [urlStr stringByReplacingOccurrencesOfString:@"yourName" withString:[_nameTF text]];
    urlWithData = [urlWithData stringByReplacingOccurrencesOfString:@"yourPhone" withString:[_phoneNoTF text]];
    NSURL * url = [NSURL URLWithString:@"http://jets.iti.gov.eg/FriendsApp/services/user/register?nae=yourName&phone=yourPhone"];
    NSURLRequest * request = [NSURLRequest requestWithURL:url];
    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    [connection start];
    
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    printf("didReceiveResponse\n");
    dataReceived = [NSMutableData new];
}
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    printf("didReceiveData\n");
    [dataReceived appendData:data];
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    
    NSDictionary * dict = [NSJSONSerialization JSONObjectWithData:dataReceived options:NSJSONReadingAllowFragments error:nil];
    NSString * status = [dict objectForKey:@"status"];
    NSString * result = [dict objectForKey:@"result"];
    if([status isEqualToString:@"FAILING"]){
        printf("registeration failed");
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registeration failed"
                                                        message:result
                                                       delegate:self
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK",@"Try Again", nil];
        [alert show];
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Registeration Succeeded"
                                                        message:result
                                                       delegate:self
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"OK", nil];
        [alert show];
        printf("registeration succeed");
    }

}
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error{
    printf("didFailWithError\n");
}

-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if(buttonIndex==0){
        printf("OK Btn");
    }else if (buttonIndex==1){
        printf("tryagain Btn");
        [self clearFields];
    }
}

-(void) clearFields{
    [_nameTF setText:@""];
    [_phoneNoTF setText:@""];
}
@end
