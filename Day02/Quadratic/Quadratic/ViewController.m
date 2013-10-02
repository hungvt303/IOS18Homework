//
//  ViewController.m
//  Quadratic
//
//  Created by Hungvt on 10/1/13.
//

#import "ViewController.h"
#import "QuadraticException.h"

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

- (void)solveWithA: (int) a withB:(int) b withC:(int)c
{
    int delta = b*b - 4*a*c;
    
    // check if delta is less than zero.
    if (delta < 0) {
        // throw quadratic exception
        QuadraticException* exception = [[QuadraticException alloc] initWithName:@"Quadratic Exception" reason:@"The delta should not less than zero." userInfo:nil];
        exception.delta = delta;
        @throw exception;
    }
    else{
        // calculate equations x1, x2
        float x1 = (-b - sqrt(delta))/(2*a);
        float x2 = (-b + sqrt(delta))/(2*a);
        
        // print x1, x2 out console
        NSLog(@"Quadratic has two equations. X1 = %f and X2 = %f", x1, x2);
    }   
        
}

- (IBAction)demoQuadratic:(id)sender {
    // init a, b, c
    int a = 1, b = 2, c = 3;
    @try {
        [self solveWithA:a withB:b withC:c];
    }
    @catch (QuadraticException *exception) {
        NSLog(@"Quadratic Exception occurs. Reason: %@. Delta value: %d", exception.reason, exception.delta);
    }
    @catch (NSException *exception) {
        // do nothing here
    }
    @finally {
        // 
        NSLog(@"End test");
    }
}


@end
