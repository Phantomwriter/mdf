//
//  ViewController.h
//  webView
//
//  Created by Howard Livingston on 3/24/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>


{


 IBOutlet  UIWebView *myWebView;
    IBOutlet  UIBarButtonItem *bButtonOutlet;

}

-(IBAction)onClick:(id)sender;

@end
