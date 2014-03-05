//
//  ViewController.m
//  tableViewTest
//
//  Created by Howard Livingston on 3/4/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
 //create an array
    
    wordArray =[[NSArray alloc] initWithObjects:@"Hey you!", @"What r u looking at?", @"Feeling lucky, punk", @"Asta Lavista Baby", @"Inconceivable!",@"Adrian!", @"Stella!", @"OFF WITH HER HEAD!",nil];
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//////////////////////////////ATTENTION//////////////////////////////
//
//
//      The next two methods are REQUIRED to make a table view!
//
//
//




//                          REQUIRED
//HOW MANY CELLS DO YOU WANT TO APPEAR IN YOUR TABLE VIEW
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    //pass in hard-coded data in this example
    return 8;
}

//                          REQUIRED

//Pass back the cells that are going to be fed back into the table view
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//Start adding cells here
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyFirstCell"];
    if (cell != nil)
        
    {
    
    //Gets quotes in the array and puts them in the label sections
    cell.textLabel.text = [wordArray objectAtIndex:indexPath.row];
        
   //  This creates a subtitle for the labels main heading. Run to see the effect
    cell.detailTextLabel.text = @"Top Ten Movie Lines!";
    
    }
    
    
    //Need a valid uitableview cell
    return  cell;

}


@end
