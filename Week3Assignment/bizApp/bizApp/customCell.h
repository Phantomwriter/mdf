//
//  customCell.h
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customCell : UITableViewCell


{
    
    
    IBOutlet UILabel *bizPageLabel;
    IBOutlet UILabel *bizTopicLabel;
    
    
    IBOutlet UIImageView *bizImage;
    
    
    
    
}
//
-(void)refreshCellWithInfo:(NSString *)firstString secondString:(NSString *)secondString cellImage:(UIImage*)cellImage;


@end
