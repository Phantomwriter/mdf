//
//  detailSecondViewController.h
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "bizCLass.h"


@interface detailSecondViewController : UIViewController <MKMapViewDelegate>



{


    //Outlets for my details page of the table view
    IBOutlet UILabel *bizLabel;
    IBOutlet UILabel *bizDetails;
    IBOutlet UITextView *locationTitle;
    IBOutlet UIImageView *bizImage;
    
    
    //BIZ List detail---one-pin-map

    IBOutlet MKMapView *myMapView;
    
    
}

@property(nonatomic,strong)bizCLass *currentBiz;













@end
