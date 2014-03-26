//
//  webSourceViewController.m
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

#import "webSourceViewController.h"

@interface webSourceViewController ()

@end

@implementation webSourceViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    
    //CREATINING 3 MAIN OBJECTS----(1)CREATE URL, (2)THE REQUEST THAT WILL SEND THE REQUEST TO THE SERVER
    // AND THE (3)CONNECTION WHICH WILL REVEIVE THE RESPONSE FROM THE ADDRESS WE GIVE
    
    
        // (a) Create URL , put it in as the object below after initWithURL
    
            _url = [[NSURL alloc] initWithString:@"http://Konami.com"];
    
        //CREATE REQUEST // request goes out and requests a page
    
            _request = [[NSURLRequest alloc] initWithURL:_url];
                if (_request != nil)
                    
                    {
                        //PULL BACK THE DATA WE NEED--THE DELEGATE IS SELF--WE WANT THE VC TO RECEIVE THE EVENTS THE CONNECTION TRIGGERS
                        _connection = [[NSURLConnection alloc]initWithRequest:_request delegate:self];
                    }
    
            //create our mutable data object--request data from function below---didReceiveData
            _requestData =[NSMutableData data];
    
    
    //NEXT, WE NEED TO CREATE THE HANDLE THE DELEGATE FUNCTIONS NEEDED--WHEN THE INFO COMES DOWN, HOW MUCH IS THERE AND WHEN IS THE THE INFO COMPLETELY DONE LOADING WHAT IT NEEDS TOO. GO BACK TO VC.h
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data

{
    
    if (data != nil)
        
    {
        [_requestData appendData:data];
    }
    
    
}
- (void)connectionDidFinishLoading:(NSURLConnection *)connection

{
    //need to convert the data into an nsstring
    
    NSString *requestString =[[NSString alloc] initWithData:_requestData encoding:NSASCIIStringEncoding];
    if (requestString != nil)
        
    {                {
       
                //Aassign it to the textview
                sourceView.text = [NSString stringWithFormat:@"%@/%@", requestString, @"index.html"];
       
       
           }
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
