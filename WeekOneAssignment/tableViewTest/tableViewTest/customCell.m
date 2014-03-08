//
//  customCell.m
//  tableViewTest
//
//  Created by Howard Livingston on 3/6/14.
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




-(void)refreshCellWithInfo:(NSString *)firstString secondString:(NSString *)secondString cellImage:(UIImage*)cellImage
{

    topMovieLabel.text = firstString;
    gossipLabel.text = secondString;
    firstViewImage.image = cellImage;

}




- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
