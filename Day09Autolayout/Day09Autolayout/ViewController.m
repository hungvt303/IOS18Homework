//
//  ViewController.m
//  Day09Autolayout
//
//  Created by Bui Duy Hung on 11/4/13.
//  Copyright (c) 2013 Bui Duy Hung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSLayoutConstraint *horizontalCenterOneContainer;
    NSLayoutConstraint *horizontalCenterOneTwo;
    NSLayoutConstraint *horizontalCenterTwoThree;
    
    NSLayoutConstraint *verticalCenterOneContainer;
    NSLayoutConstraint *verticalCenterOneTwo;
    NSLayoutConstraint *verticalCenterTwoThree;
    
    NSLayoutConstraint *horizontalSpacingConstraintOneTwo;
    NSLayoutConstraint *horizontalSpacingConstraintTwoThree;
    NSLayoutConstraint *verticalSpacingConstraintOneTwo;
    NSLayoutConstraint *verticalSpacingConstraintTwoThree;
}

@property (weak, nonatomic) IBOutlet UIView *objOne;
@property (weak, nonatomic) IBOutlet UIView *objTwo;
@property (weak, nonatomic) IBOutlet UIView *objThree;

@end

@implementation ViewController

- (void) viewWillAppear:(BOOL)animated
{
    [super viewDidLoad];
    
    
}

- (void)viewDidLoad
{
    // horizontal constraint
    horizontalCenterOneContainer = [NSLayoutConstraint constraintWithItem:self.objOne attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.0f];
    
	horizontalCenterOneTwo = [NSLayoutConstraint constraintWithItem:self.objTwo attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.objOne attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.0f];
    
    horizontalCenterTwoThree = [NSLayoutConstraint constraintWithItem:self.objThree attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.objTwo attribute:NSLayoutAttributeCenterX multiplier:1.0f constant:0.0f];
    
    // vertical constraint
    verticalCenterOneContainer = [NSLayoutConstraint constraintWithItem:self.objOne attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0.0f];
    
	verticalCenterOneTwo = [NSLayoutConstraint constraintWithItem:self.objTwo attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.objOne attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0.0f];
    
    verticalCenterTwoThree = [NSLayoutConstraint constraintWithItem:self.objThree attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.objTwo attribute:NSLayoutAttributeCenterY multiplier:1.0f constant:0.0f];
    
    // horizontal spacing constaint
    horizontalSpacingConstraintOneTwo = [NSLayoutConstraint constraintWithItem:self.objTwo attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.objOne attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:40.0f];
    
   horizontalSpacingConstraintTwoThree = [NSLayoutConstraint constraintWithItem:self.objThree attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.objTwo attribute:NSLayoutAttributeTrailing multiplier:1.0f constant:40.0f];
    
    verticalSpacingConstraintOneTwo = [NSLayoutConstraint constraintWithItem:self.objTwo attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.objOne attribute:NSLayoutAttributeBottom multiplier:1.0f constant:40.0f];
    
    verticalSpacingConstraintTwoThree = [NSLayoutConstraint constraintWithItem:self.objThree attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.objTwo attribute:NSLayoutAttributeBottom multiplier:1.0f constant:40.0f];
    
    [self.view addConstraint:verticalCenterOneContainer];
    [self.view addConstraint:verticalCenterOneTwo];
    [self.view addConstraint:verticalCenterTwoThree];
    [self.view addConstraint:horizontalCenterOneContainer];
    [self.view addConstraint:horizontalCenterOneTwo];
    [self.view addConstraint:horizontalCenterTwoThree];
    [self.view addConstraint:horizontalSpacingConstraintOneTwo];
    [self.view addConstraint:horizontalSpacingConstraintTwoThree];
    [self.view addConstraint:verticalSpacingConstraintOneTwo];
    [self.view addConstraint:verticalSpacingConstraintTwoThree];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    // landscape screen --> add vertical constraint and remove horizontal constraint
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft || toInterfaceOrientation == UIInterfaceOrientationLandscapeRight) {
        [self.view removeConstraint:horizontalCenterOneContainer];
        [self.view removeConstraint:horizontalCenterOneTwo];
        [self.view removeConstraint:horizontalCenterTwoThree];
        [self.view removeConstraint:verticalSpacingConstraintOneTwo];
        [self.view removeConstraint:verticalSpacingConstraintTwoThree];
        
        [self.view addConstraint:verticalCenterOneContainer];
        [self.view addConstraint:verticalCenterOneTwo];
        [self.view addConstraint:verticalCenterTwoThree];
        [self.view addConstraint:horizontalSpacingConstraintOneTwo];
        [self.view addConstraint:horizontalSpacingConstraintTwoThree];
        
    }else {
        [self.view removeConstraint:verticalCenterOneContainer];
        [self.view removeConstraint:verticalCenterOneTwo];
        [self.view removeConstraint:verticalCenterTwoThree];
        [self.view removeConstraint:horizontalSpacingConstraintOneTwo];
        [self.view removeConstraint:horizontalSpacingConstraintTwoThree];
        
        [self.view addConstraint:horizontalCenterOneContainer];
        [self.view addConstraint:horizontalCenterOneTwo];
        [self.view addConstraint:horizontalCenterTwoThree];
        [self.view addConstraint:verticalSpacingConstraintOneTwo];
        [self.view addConstraint:verticalSpacingConstraintTwoThree];
    }
}
@end
