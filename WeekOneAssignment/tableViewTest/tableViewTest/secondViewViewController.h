//
//  secondViewViewController.h
//  tableViewTest
//
//  Created by Howard Livingston on 3/6/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>

//Import this class becus we now need the info from the array
#import "movieQuotesClass.h"


@interface secondViewViewController : UIViewController


{
    //Outlets

    IBOutlet UILabel *quoteLabel;
    IBOutlet UILabel *selectionDetails;
    
    
    
    IBOutlet UIImageView *detailsImage;
    
    
    IBOutlet UITextView *movieDetails;
    
   



}


//Create the @property
@property (nonatomic, strong)movieQuotesClass *currentMovie;



@end
