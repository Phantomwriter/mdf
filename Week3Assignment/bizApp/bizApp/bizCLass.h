//
//  bizCLass.h
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface bizCLass : NSObject <MKAnnotation>

{

    NSString *title;
    CLLocationCoordinate2D coordinate;


}


-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord;
//6

//Co-ordinates for individual pin
@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;

@property (nonatomic, copy) NSString *locationTitle;

//Name of the business
@property (nonatomic, strong)NSString *biz;

//String to carry biz info
@property (nonatomic, strong)NSString *bizString;

//Image
@property (nonatomic, strong)UIImage *bizImage;

//Detail View details for text filed
@property (nonatomic, strong)NSString *bizDetailString;

//Detail Page Image
@property (nonatomic, strong)UIImage *bizDetailImage;

@property (nonatomic, strong)NSString *pinTitleString;

@property (nonatomic, strong)NSString *pinTitleSubstring;






@end
