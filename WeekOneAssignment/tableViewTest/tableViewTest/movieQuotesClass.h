//
//  movieQuotesClass.h
//  tableViewTest
//
//  Created by Howard Livingston on 3/6/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <Foundation/Foundation.h>

//This is a created array...it's an object and when we want to create and then pull multiple pieces of data, we should always create a new object to handle all of the arrays instead of creating an array for each individual variable. Istead of an array for quote and an array for movie...we store all that movie info in one array

@interface movieQuotesClass : NSObject


{



}

@property(nonatomic, strong)NSString *movieQuoteString;
@property(nonatomic, strong)NSString *movie;
@property(nonatomic, strong)UIImage *movieImage;
@property(nonatomic, strong)UIImage *detailsImage;
@property(nonatomic,strong)NSString *movieDetails;


@end
