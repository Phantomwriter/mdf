//
//  secondViewViewController.m
//  tableViewTest
//
//  Created by Howard Livingston on 3/6/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "secondViewViewController.h"

@interface secondViewViewController ()

@end

@implementation secondViewViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}





-(void)viewWillAppear:(BOOL)animated

//when the view appears
{
    quoteLabel.text = self.currentMovie.movieQuoteString;
    selectionDetails.text = self.currentMovie.movie;
    movieDetails.text = self.currentMovie.movieDetails;
    detailsImage.image = self.currentMovie.detailsImage;
    
    
    
    
    

}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
