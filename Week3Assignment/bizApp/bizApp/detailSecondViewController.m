//
//  detailSecondViewController.m
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "detailSecondViewController.h"

@interface detailSecondViewController ()

@end

@implementation detailSecondViewController

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
   
   CLLocationCoordinate2D coordinates = _currentBiz.coordinate;
   
   //Check to make sure info is being passed
            NSLog(@"working %f,%f",coordinates.latitude, coordinates.longitude);
   
   
   
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

/**/

-(void)viewDidAppear:(BOOL)animated
{
    //Where I want to focus
    CLLocationCoordinate2D zoomLocation = _currentBiz.coordinate;
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta =0.1f;
    zoomSpan.longitudeDelta = 0.1f;
    [myMapView setRegion:MKCoordinateRegionMake(zoomLocation, zoomSpan)animated:true];
   
    //Create the ability to create a point
    MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
    
    
    //designate a co-ordiante--accessible to all array items
    point.coordinate = _currentBiz.coordinate;
    
    //give the pin a title and sub-title accessible to all array items
    point.title = _currentBiz.pinTitleString;
    point.subtitle = _currentBiz.pinTitleSubstring;
    
   
    // the point to the map at runtime
    [myMapView addAnnotation:point];
    
    
}


- (MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id <MKAnnotation>)annotation
{
    //checks for existing pin annotation view
    MKPinAnnotationView *pinAnnotationView =(MKPinAnnotationView*)[mapView dequeueReusableAnnotationViewWithIdentifier:@"pinID"];
    
    if (pinAnnotationView == nil)
        
    {
        
        //creates a new pin annotation view if one cannot be reused
        pinAnnotationView =[[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:@"pinID"];
        pinAnnotationView.pinColor = MKPinAnnotationColorPurple;
        pinAnnotationView.canShowCallout = true;
        
        
    }
    
    
    return pinAnnotationView;
}







//When research view appears
-(void)viewWillAppear:(BOOL)animated

{
    //declare the affected element, make the property equal the desired declared outlets
    
    bizLabel.text = self.currentBiz.bizString;
    bizDetails.text = self.currentBiz.biz;
    bizImage.image =self.currentBiz.bizImage;
    locationTitle.text = self.currentBiz.locationTitle;
   
    
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
