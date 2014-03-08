//
//  ViewController.m
//  tableViewTest
//
//  Created by Howard Livingston on 3/4/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "ViewController.h"
#import "secondViewViewController.h"
#import "movieQuotesClass.h"
#import "customCell.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
//Pulling from seperate array of objects for the movie quotes
    
//All of the label information and image set-up is here
    
    //1
    movieQuotesClass *famousMovie1=[[movieQuotesClass alloc]init];
    famousMovie1.movieQuoteString = @"I'll be back";
    famousMovie1.movie = @"The Terminator";
    famousMovie1.movieImage = [UIImage imageNamed:@"term.png"];
    famousMovie1.detailsImage =[UIImage imageNamed:@"term.png"];
    famousMovie1.movieDetails = @"The Terminators/Ahhhhnold's famous quote didn't seem so threatening until he came back and tore up the police station looking for Sarah Connor. I've never wanted anyone to come back less than this guy!";
    
    //2
    movieQuotesClass *famousMovie2=[[movieQuotesClass alloc]init];
    famousMovie2.movieQuoteString = @"Yippy-Kai-yay Mother--";
    famousMovie2.movie = @"Die Hard";
    famousMovie2.movieImage = [UIImage imageNamed:@"dieHard.png"];
    famousMovie2.detailsImage =[UIImage imageNamed:@"dieHard.png"];
    famousMovie2.movieDetails=@"Bruce Willis became a world wide phenomenon after the success of this summer blockbuster. This was his first big screen debut and probably his most memorable.";

     //3
    movieQuotesClass *famousMovie3=[[movieQuotesClass alloc]init];
    famousMovie3.movieQuoteString = @"May the Force Be With You";
    famousMovie3.movie = @"Star Wars";
    famousMovie3.movieImage = [UIImage imageNamed:@"luke.png"];
    famousMovie3.detailsImage =[UIImage imageNamed:@"luke.png"];
    famousMovie3.movieDetails=@"The Force was new to the real world and when the hero, Luke Skywalker, blurted out these 6 words, not only did it finish his character arc, him accepting of the powers he once scoffed at, but it solidified this term in geek history...ROCK ON YOUNG JEDI!";

     
     //4
     movieQuotesClass *famousMovie4=[[movieQuotesClass alloc]init];
     famousMovie4.movie = @"Star Wars:The Empire Strikes Back";
     famousMovie4.movieImage = [UIImage imageNamed:@"yoda.png"];
     famousMovie4.detailsImage =[UIImage imageNamed:@"yoda.png"];
     famousMovie4.movieQuoteString = @"Do, or do not. There is no try";
     famousMovie4.movieDetails=@"Simpler words have never been spoken, but at that moment, Luke entrusts the little green guy with his training and learns to grasp the real power of the force while hanging out in the murky swamps of Dagobah. No green individual under three feet high, with the exception of Kermit the Frog, has ever influeneced so many to tackle their dreams and have faith in themselves than Yoda.";
     
     //5
     movieQuotesClass *famousMovie5=[[movieQuotesClass alloc]init];
     famousMovie5.movie = @"The Karate Kid";
     famousMovie5.movieImage = [UIImage imageNamed:@"kk.png"];
     famousMovie5.detailsImage =[UIImage imageNamed:@"kk.png"];
     famousMovie5.movieQuoteString = @"Wax on, Wax off";
     famousMovie5.movieDetails = @"You call this karate training? Little did Daniel-Son realize that with all this waxing on and off, he was training the appropriate muscles to be a karate champion and the hero of the story. Ya' see Daniel-Son, Mr. Miagi was right the whole time. Patience grasshopper!";
     
     //6
     movieQuotesClass *famousMovie6=[[movieQuotesClass alloc]init];
     famousMovie6.movie = @"Dirty Harry";
     famousMovie6.movieImage = [UIImage imageNamed:@"lucky.png"];
     famousMovie6.detailsImage =[UIImage imageNamed:@"lucky.png"];
     famousMovie6.movieQuoteString = @"Feel lucky, punk?";
     famousMovie6.movieDetails =@"Making punks feel unlucky is his reason for waking up in the morning. This movie solidified Clint Eastwood as a real Hollywood contender. I also learned that a Magnum could blow your head clean-off.";
     
     //7
     movieQuotesClass *famousMovie7=[[movieQuotesClass alloc]init];
     famousMovie7.movie = @"Sudden Impact";
     famousMovie7.movieImage = [UIImage imageNamed:@"makeMyDay.png"];
     famousMovie7.detailsImage =[UIImage imageNamed:@"makeMyDay.png"];
     famousMovie7.movieQuoteString = @"Go Ahead, make my day";
     famousMovie7.movieDetails = @"Boy is this guy grumpy. He wanted the guy to make a move. More bad-assy-ness from the newly discovered cop on the edge Clint Eastwood";
     
     //8
     movieQuotesClass *famousMovie8=[[movieQuotesClass alloc]init];
     famousMovie8.movie = @"The Sixth Sense";
     famousMovie8.movieImage = [UIImage imageNamed:@"6th.png"];
     famousMovie8.detailsImage =[UIImage imageNamed:@"6th.png"];
     famousMovie8.movieQuoteString = @"I see dead people";
     famousMovie8.movieDetails= @"Had to be one of the greatest twist endings in the history of filmaking. Having studied the craft of screenwriting in my younger days, I thought this script was brilliant and caused a bidding war in Hollywood. M. Night went on to create other great works like Unbreakable and The Village. Bruce Willis was one of the big names in this movie and also teamed up with that same director and appeared in Unbreakable as the unbreakable security guard.";
     //9
     movieQuotesClass *famousMovie9=[[movieQuotesClass alloc]init];
     famousMovie9.movie = @"Apollo 13";
     famousMovie9.movieImage = [UIImage imageNamed:@"apollo13.png"];
     famousMovie9.detailsImage =[UIImage imageNamed:@"apollo13"];
     famousMovie9.movieQuoteString = @"Houston, we have a problem";
     famousMovie9.movieDetails =@"Boy did they ever. A great cast featuring Tom Hanks, Kevin Bacon, Bill Paxton, Gary Senese and Ed Harris. This film brought to life one of NASA's most difficult missions. It really shows the determination of humans and what we can do when our backs are against the wall.";
     
     //10
     movieQuotesClass *famousMovie10=[[movieQuotesClass alloc]init];
     famousMovie10.movie = @"The Blues Brothers";
     famousMovie10.movieImage = [UIImage imageNamed:@"bros.png"];
     famousMovie10.detailsImage =[UIImage imageNamed:@"bros.png"];
     famousMovie10.movieQuoteString = @"We're on a mission from God";
     famousMovie10.movieDetails=@"Getting the band back together for the orphanage was a great idea. When these guys decide to deliver the check, the world is after them in this laugh-a-minute comdey with two of Hollywoods funniest guys, Dan Aykroyd and John Belushi.";
     //11
     movieQuotesClass *famousMovie11=[[movieQuotesClass alloc]init];
     famousMovie11.movie = @"E.T.:The Extraterrestrial";
     famousMovie11.movieImage = [UIImage imageNamed:@"et.png"];
     famousMovie11.detailsImage =[UIImage imageNamed:@"et.png"];
     famousMovie11.movieQuoteString = @"E T phone home";
     famousMovie11.movieDetails=@"What a great movie. No, he doesn't want to suck your brains out or take over the earth...he wants to pot plants and eat Reeses Pieces and GO HOME...is that so bad? Isn't that what we all want? To be home and safe? When you're a cute little alien that heals flowers and gets drunk off of beer, how can we not want to help";
     //12
     movieQuotesClass *famousMovie12=[[movieQuotesClass alloc]init];
     famousMovie12.movie = @"Poltergeist";
     famousMovie12.movieImage = [UIImage imageNamed:@"geist.png"];
     famousMovie12.detailsImage =[UIImage imageNamed:@"geist.png"];
     famousMovie12.movieQuoteString = @"They're here";
     famousMovie12.movieDetails=@"What a creepy movie and liilte Carol-Ann was right. They were here with giant children eating trees, deadly clown dolls and the ability to stack kitchen chairs in interesting ways. I liked that they never showed carol-Ann on the other side. Where ever she was, she was lost and surrounded by ghosts, and I'm not talking about Casper. Sometimes in film making, when you leave a little to the imagination, the audience can fill in the blanks in their own way. I think this allows each of us as individuals to create those scary details ourselves. Thank you Spielberg for letting me creep myself out.";
     //13
     movieQuotesClass *famousMovie13=[[movieQuotesClass alloc]init];
     famousMovie13.movie = @"Forrest Gump";
     famousMovie13.movieImage = [UIImage imageNamed:@"gump.png"];
     famousMovie13.detailsImage =[UIImage imageNamed:@"gump.png"];
     famousMovie13.movieQuoteString = @"Life's like a box of chocolates..";
     famousMovie13.movieDetails=@"My momma' always said that life is like a box of chocolates. You never know what you're gonna' get. I don't think that there's ever been a movie that told a great story involving so many historical references. Sad, sweet, funny, dramatic, it had it all. Even a simple man can live a great life. C'mon Jenny, marry the guy already!";
     //14
     movieQuotesClass *famousMovie14=[[movieQuotesClass alloc]init];
     famousMovie14.movie = @"2001: A Space Odyssey";
     famousMovie14.movieImage = [UIImage imageNamed:@"hal.png"];
     famousMovie14.detailsImage =[UIImage imageNamed:@"hal.png"];
     famousMovie14.movieQuoteString = @"Open the pod bay doors Hal";
     famousMovie14.movieDetails=@"The moment where science fiction fans realized that smart computers could go crazy just like us. But it was so unexpected. And how scarry is the thought of drifting is space forever. The body would never decompse out there...gross!";
     //15
     movieQuotesClass *famousMovie15=[[movieQuotesClass alloc]init];
     famousMovie15.movie = @"The Godfather";
     famousMovie15.movieImage = [UIImage imageNamed:@"littleFriend.png"];
     famousMovie15.detailsImage =[UIImage imageNamed:@"littleFriend.png"];
     famousMovie15.movieQuoteString = @"Say hello to my little friend";
     famousMovie15.movieDetails=@"Al Pachino didn't care...he wanted it all. I didn't particularly like this movie. I'm not a big fan of Pachino and the grimy underworld of coke distribution isn't my favorite subject but for what it's worth, I'll give credit where credit is due.";
     //16
     movieQuotesClass *famousMovie16=[[movieQuotesClass alloc]init];
     famousMovie16.movie = @"The Wizrd of Oz";
     famousMovie16.movieImage = [UIImage imageNamed:@"oz.png"];
     famousMovie16.detailsImage =[UIImage imageNamed:@"oz.png"];
     famousMovie16.movieQuoteString = @"Toto, I don't think we're in Kansas anymore.";
     famousMovie16.movieDetails=@"In the era this film was made, the colorful, bigger than life portrayal of Oz made cinematic history. We all fell in love with Dorothy and can identify with being scared and far from home. Flying monkeys and cackling witches are DEFINITELY SCARRY (says all of my kids looking back when they were younger and seeing this movie for the first time)!";
    
     //17
     movieQuotesClass *famousMovie17=[[movieQuotesClass alloc]init];
     famousMovie17.movie = @"Rocky";
     famousMovie17.movieImage = [UIImage imageNamed:@"rocky.png"];
     famousMovie17.detailsImage =[UIImage imageNamed:@"rocky.png"];
     famousMovie17.movieQuoteString = @"Adrian!";
     famousMovie17.movieDetails=@"With his face all mashed up from being beaten on, you'd think that Adrian was his mother and he was calling out for medical attention. In Rocky's eyes, no one cared and he beat the odds. Why not call out to his true love? Awwwwww.";
    
     //18
     movieQuotesClass *famousMovie18=[[movieQuotesClass alloc]init];
     famousMovie18.movie = @"Star Trek 2: The Wrath of Kahn.";
     famousMovie18.movieImage = [UIImage imageNamed:@"spock.png"];
     famousMovie18.detailsImage =[UIImage imageNamed:@"spock.png"];
     famousMovie18.movieQuoteString = @"My friend Quote";
     famousMovie18.movieDetails=@"I have been, and always shall be, your friend. What a quote. What a twist! Spock died and we all watched it happen. In Star Trek 2: The Wrath of Kahn, spock dies saving the Enterprise from destruction and there was nothing anyone could do about it. I remember being in the theatre...you could hear a pin drop and some sobbing from unknown trekkie fans who were floored at what they were seeing. Don't worry collective geekdom...Project Genesis will have him good as new in the next franchise installment.";
    
     //19
     movieQuotesClass *famousMovie19=[[movieQuotesClass alloc]init];
     famousMovie19.movie = @"A Few Good Men";
     famousMovie19.movieImage = [UIImage imageNamed:@"theTruth.png"];
     famousMovie19.detailsImage =[UIImage imageNamed:@"theTruth.png"];
     famousMovie19.movieQuoteString = @"You can't handle the truth!";
     famousMovie19.movieDetails=@"That son-of-a-bitch ordered a code red on that marine and Tom Cruise and Demi Moore weren't gong to let Jack Nicholson's character get away with it. What a moment, and we all cheered when he got up to walk away and the judge said not so fast!";
    
     //20
     movieQuotesClass *famousMovie20=[[movieQuotesClass alloc]init];
     famousMovie20.movie = @"The Shawshank Redemption";
     famousMovie20.movieImage = [UIImage imageNamed:@"ssred.png"];
     famousMovie20.detailsImage =[UIImage imageNamed:@"ssred.png"];
     famousMovie20.movieQuoteString = @"Get busy livin, or get busy dyin";
     famousMovie20.movieDetails=@" Get busy livin', or get busy dyin'. I saved the best for last. This is one of my top five favorite films of all time. A man framed for murder gets sent to the worst prison one could imagine. I won't give away the ending but this story, originally penciled by Stephen King, tells a truly epic story of mans victory over seemingly impossible odds.";


    
//project 1 array
     movieArray =[[NSMutableArray alloc] initWithObjects:
        famousMovie1,
        famousMovie2,
        famousMovie3,
        famousMovie4,
        famousMovie5,
        famousMovie6,
        famousMovie7,
        famousMovie8,
        famousMovie9,
        famousMovie10,
        famousMovie11,
        famousMovie12,
        famousMovie13,
        famousMovie14,
        famousMovie15,
        famousMovie16,
        famousMovie17,
        famousMovie18,
        famousMovie19,
        famousMovie20,
     nil];
     
     
     
     
     
     
    
    
    
    
    
    
    
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



//performs segue from first VC to Second VC - no code just needs to be here
-(IBAction)onClick:(UIStoryboardSegue*)segue
{
    
    
}
//when the user hits the edit dome button
-(IBAction)onEditCLick
{


//put the table view into edit mode
 myTableView.editing = !myTableView.isEditing;
    
    
    
    
    
}

//The segue method
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{

    //
    secondViewViewController *SecondViewViewController = segue.destinationViewController;
    
    if (SecondViewViewController != nil)
//need to set up properties in .h now that we have the secondView established and identified
    {
        
    // more set-up
        UITableViewCell *cell =(UITableViewCell*)sender;
        NSIndexPath *indexPath = [myTableView indexPathForCell:cell];
        
        //etablish movieQuote Class and array
        movieQuotesClass *currentMovie = [movieArray objectAtIndex:indexPath.row];
        SecondViewViewController.currentMovie = currentMovie;
    
    }




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
    return[movieArray count];
}


//remove items from the table view with this
-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    //r we in delete mode?
    if(editingStyle == UITableViewCellEditingStyleDelete)
    {
        
        
        //After the delete button is hit
        
        //FIRST-this will remove the data from tne data array
        [movieArray removeObjectAtIndex:indexPath.row];
        
        //Second-remove the line that the movie is on from the table view
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:(UITableViewRowAnimationAutomatic)];
    
    
    }




}



//                          REQUIRED

//Pass back the cells that are going to be fed back into the table view
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
//Start adding cells here
    customCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyFirstCell"];
    if (cell != nil)
        
    {
   
        //establish movie object class
        movieQuotesClass *currentMovie = [movieArray objectAtIndex:indexPath.row];
        
        [cell refreshCellWithInfo:currentMovie.movieQuoteString secondString:currentMovie.movie cellImage:currentMovie.movieImage];
        
    }
    
    
    //Need a valid uitableview cell
    return  cell;

}


@end
