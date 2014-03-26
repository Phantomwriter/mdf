//
//  customCell.m
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "customCell.h"

@implementation customCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

//Establishing whats going in the cells
-(void)refreshCellWithInfo:(NSString *)firstString secondString:(NSString *)secondString cellImage:(UIImage*)cellImage
{
    
    bizPageLabel.text = firstString;
    bizTopicLabel.text = secondString;
    bizImage.image = cellImage;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
