//
//  ViewController.m
//  appWithImages
//
//  Created by Howard Livingston on 3/4/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "ViewController.h"
#import "dataLayer.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    //pull from data source
    theDataLayer = [[dataLayer alloc] init];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(void)viewDidAppear:(BOOL)animated
{
    
    textLabel.text = [theDataLayer getInfo];
    
    [super viewDidAppear:animated];
    
}


-(void)viewWillAppear:(BOOL)animated
{
    
    
    [super viewWillAppear:animated];
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
