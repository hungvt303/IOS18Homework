//
//  ViewController.m
//  Day12Manga
//
//  Created by Bui Duy Hung on 11/11/13.
//  Copyright (c) 2013 Viettel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    NSDictionary *storyData;
    NSArray *pages;
    CGRect pageRect; // kich thuoc cua cac Page
}

@property (weak, nonatomic) IBOutlet UILabel *pageNumber;
@property (weak, nonatomic) IBOutlet UILabel *pageTitle;
@property (weak, nonatomic) IBOutlet UIScrollView *scroller;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // khoi tao du lieu story
    NSString *storyPath = [[NSBundle mainBundle] pathForResource:@"doremon" ofType:@"plist"];
    
    storyData = [[NSDictionary alloc] initWithContentsOfFile:storyPath];
    
    // doc title cua truyen
    NSString *title = [storyData objectForKey:@"Title"];
    
    // thiet lap title cho man hinh
    self.navigationController.title = title;
    
    // doc cac page tu dictionary vao mang
    pages = (NSArray *) [storyData objectForKey:@"Story"];
    
    // khoi tao pageRect
    pageRect = CGRectMake(0, 0, 320, 480);
    
    // khoi tao scroller
    self.scroller.pagingEnabled = YES;
  
    // tinh toan kich thuoc content size cua scroller
    int numPage = [pages count];
    if (numPage > 0) {
        self.scroller.contentSize = CGSizeMake(pageRect.size.width * numPage, pageRect.size.height);
        
        // khoi tao cac trang truyen va them vao scroller
        for (int i = 0; i < numPage; i++) {
            NSString *imagePath = [[NSBundle mainBundle] pathForResource:[(NSDictionary *)[pages objectAtIndex:i] objectForKey:@"image"] ofType:@"jpg"];
            UIImage *pageImage = [[UIImage alloc] initWithContentsOfFile:imagePath];
            UIImageView *imageView = [[UIImageView alloc] initWithImage:pageImage];
            imageView.frame = CGRectMake(i*pageRect.size.width, 0, pageRect.size.width, pageRect.size.height);
            imageView.contentMode = UIViewContentModeScaleAspectFit;
            [self.scroller addSubview:imageView];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    int currentPage = floor((self.scroller.contentOffset.x - pageRect.size.width/2)/pageRect.size.width + 1);
    self.pageNumber.text = [NSString stringWithFormat:@"%d",currentPage + 1];
    self.pageTitle.text = [(NSDictionary *)[pages objectAtIndex:currentPage] objectForKey:@"Title"];
}

@end
