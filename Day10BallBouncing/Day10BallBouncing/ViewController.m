//
//  ViewController.m
//  Day10BallBouncing
//
//  Created by Bui Duy Hung on 11/4/13.
//  Copyright (c) 2013 Bui Duy Hung. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSTimer *timer;
    CGSize screenBounds;
    float ballRadius;
    CGPoint delta;
}
@property (weak, nonatomic) IBOutlet UIImageView *ball;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    screenBounds = self.view.bounds.size;
    ballRadius = self.ball.bounds.size.width/2;
    delta = CGPointMake(20, 20);
    
    // initialize timer
    [NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(moveBall) userInfo:nil repeats:YES];

}

- (void) moveBall
{
    
    self.ball.center = CGPointMake(self.ball.center.x + delta.x, self.ball.center.y + delta.y);
    
    // check if ball hit screen bounds
    // if ball hit right edge
    if (self.ball.center.x > screenBounds.width - ballRadius || self.ball.center.x < ballRadius) {
        delta.x = -delta.x;
        
    }
    
    if (self.ball.center.y > screenBounds.height - ballRadius || self.ball.center.y < ballRadius) {
        delta.y = -delta.y;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
