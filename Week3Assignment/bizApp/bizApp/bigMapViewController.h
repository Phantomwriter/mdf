//
//  bigMapViewController.h
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "bizCLass.h"


@interface bigMapViewController : UIViewController <MKMapViewDelegate>


{
    
    IBOutlet MKMapView *bigMapView;
    
    
}



@property(nonatomic,strong)bizCLass *currentBiz;



@end
