//
//  SecondViewController.h
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import <UIKit/UIKit.h>




@interface SecondViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

{

    IBOutlet UIButton *editButton;    
    IBOutlet UITableView *myTableView;
    IBOutlet UITextView *tabelViewText;
    
    
    

}

@property(nonatomic, strong)NSMutableArray *bizArray;

-(IBAction)onEditCLick;
@end



