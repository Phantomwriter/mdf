//
//  ViewController.h
//  tableViewTest
//
//  Created by Howard Livingston on 3/4/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>

//Creating the table view delegate
@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>


{
    //Outlet for tableView....mutable array for the list of movies
    IBOutlet UITableView *myTableView;
    NSMutableArray *movieArray;
    
}

//Action method for edit capability

-(IBAction)onEditCLick;



@end
