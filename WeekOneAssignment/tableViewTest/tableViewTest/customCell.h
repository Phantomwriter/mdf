//
//  customCell.h
//  tableViewTest
//
//  Created by Howard Livingston on 3/6/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface customCell : UITableViewCell


{


    IBOutlet UILabel *topMovieLabel;
    IBOutlet UILabel *gossipLabel;
    
    IBOutlet UIImageView *firstViewImage;
    
    


}

-(void)refreshCellWithInfo:(NSString *)firstString secondString:(NSString *)secondString cellImage:(UIImage*)cellImage;

@end
