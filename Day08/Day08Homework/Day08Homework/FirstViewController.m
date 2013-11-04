//
//  FirstViewController.m
//  Day08Homework
//
//  Created by Dang Truong on 10/22/13.
//  Copyright (c) 2013 eLeisure. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
- (IBAction)presentCoverVertical:(id)sender {
    SecondViewController *secondScreen = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    secondScreen.modalTransitionStyle = UIModalTransitionStyleCoverVertical;
    [self presentModalViewController:secondScreen animated:TRUE];
}

- (IBAction)presentDissolve:(id)sender {
    SecondViewController *secondScreen = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    secondScreen.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentModalViewController:secondScreen animated:TRUE];
}

- (IBAction)presentFlipHorizontal:(id)sender {
    SecondViewController *secondScreen = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    secondScreen.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:secondScreen animated:TRUE];
}

- (IBAction)presentPartialCurl:(id)sender {
    SecondViewController *secondScreen = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    secondScreen.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentModalViewController:secondScreen animated:TRUE];
}



@end
