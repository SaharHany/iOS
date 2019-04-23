//
//  ViewController.h
//  Sync&AsyncDmo
//
//  Created by JETS Mobile Lab on 4/22/19.
//  Copyright © 2019 ITI. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController <NSURLConnectionDelegate, NSURLConnectionDataDelegate,UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;
@end

