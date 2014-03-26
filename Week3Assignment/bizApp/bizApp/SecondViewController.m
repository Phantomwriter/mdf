//
//  SecondViewController.m
//  bizApp
//
//  Created by Howard Livingston on 3/18/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "SecondViewController.h"
#import "bizCLass.h"
#import "detailSecondViewController.h"
#import "customCell.h"


@interface SecondViewController ()

@end

@implementation SecondViewController



- (void)viewDidLoad
{
    
//Biz 1
    CLLocationCoordinate2D coord1 = CLLocationCoordinate2DMake(40.6892f,-74.04444f);
    bizCLass * biz1 =[[bizCLass alloc] initWithTitle:@"" coord:coord1];
    biz1.bizString = @"Statue of Liberty";
    biz1.biz= @"She's from France";
    //Text about location
    biz1.locationTitle =@"Her torch is like a beacon and greets visitors entering the United States. I brings hope to those seeking a new beginning. The National Park Service provides tours so all you have to do is go to the addresss and you can't miss them.";
    biz1.bizImage =[UIImage imageNamed: @"sol.png"];
    
    //cell title
    biz1.bizDetailString = @"The Statue of Liberty";
    
   //Pin title and sub-tite
    biz1.pinTitleString = @"Liberty Island";
    biz1.pinTitleSubstring = @"New York, NY 10004";
   

//Biz 2
    
    
    CLLocationCoordinate2D coord2 = CLLocationCoordinate2DMake( 41.9414926f,-70.6239227f);
    bizCLass * biz2 =[[bizCLass alloc] initWithTitle:@"" coord:coord2];
    biz2.bizString = @"Plimoth Plantation ";
    biz2.biz= @"Real Pilgrims!";
    //Text about location
    biz2.locationTitle =@"Visitors can see what it weas really like for the people living in the 1600's. A village filled with pilgrims creates an immersive environment where visitors can interact with 16th Centurt characters as they go about their daily loves. be sure to check for special dates. Marriages, musket drills and feasts are planned on a regular basis.";
    biz2.bizImage =[UIImage imageNamed: @"pp.png"];
    
    //cell title
    biz2.bizDetailString = @"Plimoth Plantation";
    
    //Pin title and sub-tite
    biz2.pinTitleString = @"137 Warren Avenue";
    biz2.pinTitleSubstring = @"Plymouth, Ma 02360";

//Biz 3
    
    
    CLLocationCoordinate2D coord3 = CLLocationCoordinate2DMake(34.427f, -118.597f);
    bizCLass * biz3 =[[bizCLass alloc] initWithTitle:@"" coord:coord3];
    biz3.bizString = @"Six Flags-Magic Mnt.";
    biz3.biz= @"Fun in the sun?";
    //Text about location
    biz3.locationTitle =@"This Six Flags stands above the rest due to it's location. The nature reserve has a lot of awesome animals that need hot weather to be confortable. Roller coasters, the beach, Holywood and Giraffes with long tounges trying to steal your ice cream through the window. Now THAT's A VACATION!!";
    biz3.bizImage =[UIImage imageNamed: @"6f.png"];
    
    //cell title
    biz3.bizDetailString = @"Six Flags Magic Mountain";
    
    //Pin title and sub-tite
    biz3.pinTitleString = @"26101 Magic Mountain Pkwy";
    biz3.pinTitleSubstring = @"Valencia, CA 91355";

    
//Biz 4
    
    CLLocationCoordinate2D coord4 = CLLocationCoordinate2DMake(36.10256180f,-115.169276999f);
    bizCLass * biz4 =[[bizCLass alloc] initWithTitle:@"" coord:coord4];
    biz4.bizString = @"MGM Grand Casino ";
    biz4.biz= @"Gamble";
    //Text about location
    biz4.locationTitle =@"The biggest casino in LAs Vegas offers shows, fine dining and lots of great games.!";
    biz4.bizImage =[UIImage imageNamed: @"mgm.png"];
    biz4.bizDetailImage =[UIImage imageNamed: @"home.png"];
    
    //cell title
    biz4.bizDetailString = @"MGM Grand Casino.";
    
    //Pin title and sub-tite
    biz4.pinTitleString = @"3799 Las Vegas Blvd S";
    biz4.pinTitleSubstring = @"Las Vegas, NV 89109";

    
//Biz 5
    
    CLLocationCoordinate2D coord5 = CLLocationCoordinate2DMake(-33.915277800f,18.3924999f);
    bizCLass * biz5 =[[bizCLass alloc] initWithTitle:@"" coord:coord5];
    biz5.bizString = @"Winchester Mansion ";
    biz5.biz= @"Ghosts";
    //Text about location
    biz5.locationTitle =@"The widow of the Winchester rifle fortune was said to be tormented by ghosts. As long as she kept building her house, they would leave her alone. Stairs leading to no where. Hidden doors and endless rooms is something everyone should se. Maybe even have a paranornal experience. They say it's haunted and they have seasonal tours.";
    biz5.bizImage =[UIImage imageNamed: @"wm.png"];
    
    //cell title
    biz5.bizDetailString = @"The Winchester Mansion";
    
    //Pin title and sub-tite
    biz5.pinTitleString = @"525 S Winchester Blvd.";
    biz5.pinTitleSubstring = @"San Hose CA 95128";

    
//Biz 6

    CLLocationCoordinate2D coord6 = CLLocationCoordinate2DMake(35.4083905f,-119.1462f);
    bizCLass * biz6 =[[bizCLass alloc] initWithTitle:@"" coord:coord6];
    biz6.bizString = @"Coast Redwoods State Park ";
    biz6.biz= @"Redwoods";
    //Text about location
    biz6.locationTitle =@"This is only one of the many campgrounds in and around the Redwood National Forest. Breathtaking redwoods, some hundreds of years old tower above any trees you've ever seen. ";
    biz6.bizImage =[UIImage imageNamed: @"red.png"];
    
    //cell title
    biz6.bizDetailString = @"Redwood Forest";
    
    //Pin title and sub-tite
    biz6.pinTitleString = @"1111 2nd St.";
    biz6.pinTitleSubstring = @"Crescent City, CA 95531";

    
//Biz 7
    
    
    CLLocationCoordinate2D coord7 = CLLocationCoordinate2DMake(38.888f,-77.026f);
    bizCLass * biz7 =[[bizCLass alloc] initWithTitle:@"" coord:coord7];
    biz7.bizString = @"Smithsonian Institute ";
    biz7.biz= @"Science Museum";
    //Text about location
    biz7.locationTitle =@"See some of the best scientific treasures from American history. The capsules from the moon missions. The space shuttle. Orville and Wilbur Wright's plane. Thje giant Pendulum and more. You won't be dissapointed";
    biz7.bizImage =[UIImage imageNamed: @"home.png"];
    biz7.bizDetailImage =[UIImage imageNamed: @"smith.png"];
    
    //cell title
    biz7.bizDetailString = @"Smithsoinian Institute";
    
    //Pin title and sub-tite
    biz7.pinTitleString = @"1000 Constitution Ave NW";
    biz7.pinTitleSubstring = @"Washington, DC 20560";

    
//Biz 8
    
    CLLocationCoordinate2D coord8 = CLLocationCoordinate2DMake(28.374960300000000000f,-81.5478f);
    bizCLass * biz8 =[[bizCLass alloc] initWithTitle:@"" coord:coord8];
    biz8.bizString = @"Diney World ";
    biz8.biz= @"Epcot Center";
    //Text about location
    biz8.locationTitle =@"In beautiful Florida lies the world of the future as it was seen over fifty years ago. With modern rides, coasters and the beautiful epcot globe that contains the city of the future, Diney World should definitely be on your bucket list";
    biz8.bizImage =[UIImage imageNamed: @"home.png"];
    biz8.bizDetailImage =[UIImage imageNamed: @"epcot.png"];
    
    //cell title
    biz8.bizDetailString = @"Epcot Center";
    
    //Pin title and sub-tite
    biz8.pinTitleString = @"200 Epcot Center Dr";
    biz8.pinTitleSubstring = @"Lake Buena Vista, FL 32821";

    
//Biz 9
    
    
    CLLocationCoordinate2D coord9 = CLLocationCoordinate2DMake(38.88868f,-77.004718f);
    bizCLass * biz9 =[[bizCLass alloc] initWithTitle:@"" coord:coord9];
    biz9.bizString = @"Library of Congress ";
    biz9.biz= @"Docs from the past";
    //Text about location
    biz9.locationTitle =@"The Decleration of Independance, The Bill of Rights and thousands of other rare and precious documents can be seen here on one of their regular tours. They often descibe the memory capacity or computing capacity of a computer on how many Libraries of Congress it can hold or process in a second. See for yourself what they're taling about";
    biz9.bizImage =[UIImage imageNamed: @"home.png"];
    biz9.bizDetailImage =[UIImage imageNamed: @"loc.png"];
    
    //cell title
    biz9.bizDetailString = @"Library of Congress";
    
    //Pin title and sub-tite
    biz9.pinTitleString = @"101 Independence Ave SE";
    biz9.pinTitleSubstring = @"Washington, DC 20540";

    
//Biz 10
    
    CLLocationCoordinate2D coord10 = CLLocationCoordinate2DMake(42.3501,-71.504f);
    bizCLass * biz10 =[[bizCLass alloc] initWithTitle:@"" coord:coord10];
    biz10.bizString = @"Krispy Kreme ";
    biz10.biz= @"Donuts!";
    //Text about location
    biz10.locationTitle =@"They're so good when they're fresh. You sit like a trained animal, waiting patiently as the the little conveyor bely delivers hot fresh good ness into a bag and into your hands. DELICIOUS!";
    biz10.bizImage =[UIImage imageNamed: @"kk.png"];
    
    //cell title
    biz10.bizDetailString = @"Fresh Donuts!";
    
    //Pin title and sub-tite
    biz10.pinTitleString = @"656 Boston Post Rd E";
    biz10.pinTitleSubstring = @"Marlborough, MA 01752";

    
    
    _bizArray
    
    =[[NSMutableArray alloc] initWithObjects:
     biz1,
     biz2,
     biz3,
     biz4,
     biz5,
     biz6,
     biz7,
     biz8,
     biz9,
     biz10,
     
        nil];
    
    
  
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}




//Edit button functionality
-(IBAction)onEditCLick
{
    
    
  //Put the table view into edit mode
    myTableView.editing = !myTableView.isEditing;
    
    if (editButton.tag == 0) {
        
        //Make the button say done
        [myTableView setEditing:TRUE];
        [editButton setTitle:@"Done" forState:0];
        editButton.tag = 1;
    }
    else
        //Put the button back to its default text
    {
        [myTableView setEditing:FALSE];
        [editButton setTitle:@"Delete Entry" forState:0];
        editButton.tag = 0;
        
    }
    
   
    
}

-(IBAction)onClick:(UIStoryboardSegue*)segue
{
    
    
}


//Transitioning segues for the table cell view
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    //
    detailSecondViewController *DetailSecondViewController = segue.destinationViewController;
    
    if (DetailSecondViewController != nil)
        //need to set up properties in .h now that we have the secondView established and identified
    {
        
        // more set-up
        UITableViewCell *cell =(UITableViewCell*)sender;
        NSIndexPath *indexPath = [myTableView indexPathForCell:cell];
        
        //etablish movieQuote Class and array
        bizCLass *currentBiz = [_bizArray objectAtIndex:indexPath.row];
        DetailSecondViewController.currentBiz= currentBiz;
        
    }
    
    
    
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [_bizArray count];
}

//remove items from the table view with this
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //r we in delete mode?
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        
        
        //After the delete button is hit
        
        //FIRST-this will remove the data from tne data array
        [_bizArray removeObjectAtIndex:indexPath.row];
        
        //Second-remove the line that the movie is on from the table view
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:(UITableViewRowAnimationAutomatic)];
        
        
    }
    
    
    
    
}

//Pass back the cells that are going to be fed back into the table view
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    //Start adding cells here
    customCell *cell = [tableView dequeueReusableCellWithIdentifier:@"customCell"];
    if (cell != nil)
        
    {
        
        //establish movie object class
        bizCLass *currentBiz = [_bizArray objectAtIndex:indexPath.row];
        
        [cell refreshCellWithInfo:currentBiz.bizDetailString secondString:currentBiz.biz cellImage:currentBiz.bizImage];
        
    }
    
    
    //Need a valid uitableview cell
    
    
    return cell;
    
}







- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
