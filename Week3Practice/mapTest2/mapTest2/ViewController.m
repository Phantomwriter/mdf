//
//  ViewController.m
//  mapTest2
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
    CLLocationCoordinate2D zoomLocation = CLLocationCoordinate2DMake(28.53f,-81.3f);
    
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta =3.5f;
    zoomSpan.longitudeDelta =3.5f;
    
    //set them on the map--right there on load
    myMapView.region = MKCoordinateRegionMake(zoomLocation, zoomSpan);
    
   
    //;loop through array
    NSMutableArray *pinAnnotations = [[NSMutableArray alloc] init];
    for (int i=0; i<10; i++)
    {
        //Create the ability to create a point
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        

        //designate a co-ordiante
        point.coordinate = CLLocationCoordinate2DMake(28.53f + (1.0f *i),-81.3f);
        
        //give the pin a title and sub-title
        point.title = @"Fun in the sun";
        point.subtitle = @"Check the forecast";
        [pinAnnotations addObject:point];

    }
    
    
    // the point to the map at runtime
    [myMapView addAnnotations:pinAnnotations];
    
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    //checks for existing pin annotation view
    MKPinAnnotationView *pinAnnotationView =(MKPinAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"pinID"];
    
    if (pinAnnotationView == nil)
    
    {
        
        //creates a new pin annotation view if one cannot be reused
        pinAnnotationView =[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pinID"];
        //pinAnnotationView.pinColor = MKPinAnnotationColorPurple;
        //replace pin with custom image....20 x 20px
        pinAnnotationView.image = [UIImage imageNamed:@"peace25.png"];
        pinAnnotationView.canShowCallout = true;
        
        
    }

                            
                            return pinAnnotationView;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Set it so it zooms in on co-ordinates
//[myMapView setRegion:MKCoordinateRegionMake(zoomLocation, zoomSpan)animated:true];
@end
