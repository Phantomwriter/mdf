//
//  bizCLass.m
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "bizCLass.h"

@implementation bizCLass
@synthesize title, coordinate;

-(id)initWithTitle:(NSString*)text coord:(CLLocationCoordinate2D)coord
{
            title = text;
        coordinate = coord;
    
    return self;
}

@end
