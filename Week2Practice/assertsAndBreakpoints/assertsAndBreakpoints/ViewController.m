//
//  ViewController.m
//  assertsAndBreakpoints
//
//  Created by Howard Livingston on 3/10/14.
//  Copyright (c) 2014 Howard Livingston. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    array = [[NSMutableArray alloc]initWithObjects:@"Schmickle", @"Schmackle", @"Fladoozle",@"McDoogle",@"McDouglas",@"McArthur",@"McJones",@"McBride",@"Rodriguez",nil];
    
    
    NSAssert(([array count] < 9), @"too many names!");
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
