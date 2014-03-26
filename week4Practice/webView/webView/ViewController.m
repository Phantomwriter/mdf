//
//  ViewController.m
//  webView
//
//  Created by Howard Livingston on 3/24/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.konami.com"];
    
    if (url != nil)
    
    
    {//create a url request object..create and initialize
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        
        if (request != nil)
        
        
        {
            //Disable button if user cant go back any further
            if (!myWebView.canGoBack)
            
            {
                bButtonOutlet.enabled = false;
            }
            
            //scale the page to fit within the webview
            myWebView.scalesPageToFit = true;
            [myWebView loadRequest:request];
        }
    }
    
   
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



//ENABLE THE BUTTON WHEN THE USER CAN GPO BAC ANOTHER PAGE WITH THE BACK BUTTON
- (void)webViewDidFinishLoad:(UIWebView *)webView


{
//DONT FORGET TO SELECT THE WEBVIEW AND HOOK UP THE DELEGATE TO THE VIEW THAT IT'S ASSIGNED TOO


    bButtonOutlet.enabled = (myWebView.canGoBack);



}



//Toolbar back button
-(IBAction)onClick:(UIBarButtonItem*)sender
{
    UIBarButtonItem *backButton = (UIBarButtonItem*)sender;
    if (backButton != nil)
    
         {
             //back
             if (backButton.tag == 0)
             {
                 if (myWebView.canGoBack)
                 
                 {
                     [myWebView goBack];
                     bButtonOutlet.enabled = (myWebView.canGoBack);
                 }
             }
             
             
             //stop
             else if (backButton.tag == 1)
                 
             {
                 if (myWebView.isLoading)
                 {
                     
                     [myWebView stopLoading];
                 }
             
                 
             }
             
             
         }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
