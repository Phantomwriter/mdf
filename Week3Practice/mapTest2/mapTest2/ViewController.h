//
//  ViewController.h
//  mapTest2
//
//  Created by Howard Livingston on 3/16/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

//mapViewDelegate allows us to modify the view,,pin color
//then go to storyboard...selecet mapview..look at right menu at connections (outlet) see "delegate. Drag to viewController"
@interface ViewController : UIViewController <MKMapViewDelegate>


{
    
    IBOutlet MKMapView *myMapView;
    
    NSMutableArray *myArray;
    
}

@end
