//
//  ViewController.m
//  Day06Homework
//
//  Created by Dang Truong on 10/14/13.
//  Copyright (c) 2013 eLeisure. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}
- (IBAction)printZigzag:(id)sender {     
    printf("*       *       *       *\n");
    printf(" *     * *     * *     *\n");
    printf("  *   *   *   *   *   *\n");
    printf("   * *     * *     * *\n");
    printf("    *       *       *\n");   
    printf("\n");

    NSString *path = [[NSBundle mainBundle] pathForResource:@"car" ofType:@"txt"];
    NSString *car = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    printf("%s", [car cStringUsingEncoding:NSUTF8StringEncoding]);
}


@end
