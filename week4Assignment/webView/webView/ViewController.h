//
//  ViewController.h
//  webView
//
//  Created by Howard Livingston on 3/24/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//
// For Full_Sail University MDF-1 with Wendy Jones
// 03/2014
//
// Project-Webview
//
// Pulls in a url request and displays the page
//
// Back-Stop-Reload functions
//
//
// Pull in html from webpage and display in a textView element


#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIWebViewDelegate>


{


    IBOutlet  UIWebView *myWebView;
    IBOutlet  UIBarButtonItem *bButtonOutlet;

}



-(IBAction)onClick:(id)sender;

@end
