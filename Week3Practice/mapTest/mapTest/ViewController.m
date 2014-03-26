//
//  ViewController.m
//  mapTest
//
//  Created by Howard Livingston on 3/16/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}



-(void)viewDidAppear:(BOOL)animated
{
//Where I want to focus
    CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake(28.530f,-81.3);

    
    MKCoordinateSpan zoomSpan;
    //For closer view..change to 0.5
    zoomSpan.latitudeDelta =2.5f;
    zoomSpan.longitudeDelta =2.5f;
 
    //set them on the map--right there on load
    //myMapView.region = MKCoordinateRegionMake(zoomLocation, zoomSpan);
    
    //Set it so it zooms in on co-ordinates
    [myMapView setRegion:MKCoordinateRegionMake(zoomLocation, zoomSpan)];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
