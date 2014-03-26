//
//  bigMapViewController.m
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "bigMapViewController.h"
#import "bizCLass.h"

@interface bigMapViewController ()

@end

@implementation bigMapViewController

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
    
    
    
    
       [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}





-(void)viewDidAppear:(BOOL)animated
{
    //Where I want to focus
    CLLocationCoordinate2D zoomLocation = _currentBiz.coordinate;
    
    
    MKCoordinateSpan zoomSpan;
    zoomSpan.latitudeDelta =3.5f;
    zoomSpan.longitudeDelta =3.5f;
    
    //set them on the map--right there on load
    bigMapView.region = MKCoordinateRegionMake(zoomLocation, zoomSpan);
    
    
    
    //;loop through array
    NSMutableArray *pinAnnotations = [[NSMutableArray alloc] init];
    for (int i=0; i<10; i++)
    {
        
        //Create the ability to create a point
        MKPointAnnotation *point = [[MKPointAnnotation alloc]init];
        
        
        //designate a co-ordiante
        point.coordinate = _currentBiz.coordinate;
        
        //give the pin a title and sub-title
        point.title = _currentBiz.pinTitleString;
        point.subtitle = _currentBiz.pinTitleSubstring;
        
        [pinAnnotations addObject:point]; 
        
    }
    
    
    // the point to the map at runtime
    [bigMapView addAnnotations:pinAnnotations];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
