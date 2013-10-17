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
    // p: la dinh cua zigzag. co the thay doi p de thay doi kich thuoc cua zigza
    // w: la do rong cua zigzag
    int p = 9;
    int w = 80;
    
    // luu zig zag vao mot mang 2 chieu
    char zz[80][9];
    // khoi tao gia tri cua zigzag voi toan ki tu rong
    for (int i = 0; i < w; i++) {
        for (int j = 0; j < p; j++) {
            zz[i][j]= ' ';
        }
    }
    
    // tao cac cham diem cho zigzag
    int j = 0;
    bool direction = true; // direction = true -> chieu cua zigzag di len, = false thi nguoc lai
    
    for (int i = 0; i < w; i++) {
        zz[i][j] = '*';
        if (j == (p-1)) {
            direction = true;
        }else if (j == 0)
        {
            direction = false;
        }
        
        if (direction) {
            j--;
        }else
        {
            j++;
        }            
    }
    
    // in zigzag ra man hinh
    for (j = 0; j < p; j++) {
        for (int i = 0; i < w; i++) {
            printf("%c", zz[i][j]);
        }
        printf("\n");
    }
    
}
- (IBAction)printCar:(id)sender {
    // ve oto
    NSString *path = [[NSBundle mainBundle] pathForResource:@"car" ofType:@"txt"];
    NSString *car = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    printf("%s", [car cStringUsingEncoding:NSUTF8StringEncoding]);
}


@end
