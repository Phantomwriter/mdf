//
//  webSourceViewController.h
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

@interface webSourceViewController : UIViewController <NSURLConnectionDataDelegate, UITextFieldDelegate>



{

IBOutlet UITextView *sourceView;



}

@property(nonatomic, strong)NSURL* url;
@property(nonatomic, strong)NSURLRequest *request;
@property (nonatomic, strong)NSURLConnection *connection;
@property(nonatomic,strong)NSString *requestString;




//This is the information coming down from the website
@property(nonatomic, strong)NSMutableData *requestData;




@end
