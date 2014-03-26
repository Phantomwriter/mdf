//
//  ViewController.m
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
             //Reload-refresh
             else if (backButton.tag == 2)
                 
             {
                 if (myWebView.isLoading == false){
                     
                     {
                         
                         [myWebView reload];
                     }
                     
            }
                 
             else if (myWebView.isLoading == true)
             {
             //Pop-up alert if web page is still loading when user tries to refresh/reload page
                 UIAlertView *loadAlert = [[UIAlertView alloc]initWithTitle:@"Error" message:@"The event is being loaded..please stand by." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
                 
                 [loadAlert show];
                 [myWebView reload];

             
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
