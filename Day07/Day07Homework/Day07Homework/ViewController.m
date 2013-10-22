//
//  ViewController.m
//  Day07Homework
//
//  Created by iOS18 on 10/21/13.
//  Copyright (c) 2013 None. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)demoPutin:(id)sender {
    // read file to NSString
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"putin" ofType:@"txt"];
    NSString *putinContent = [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
    // remove: ".", ",", ":", ";"
    putinContent = [[putinContent componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@".,:;"]] componentsJoinedByString:@""];
    
    // print out file content to console
    NSLog(@"%@",putinContent);
    
    // declare not important words. Below just list some important word for demo, we can add more some important word as need
    NSArray *notImportant = @[@"it", @"is", @"that", @"has", @"was", @"there",@"The", @"also", @"and"];
    
    // split file content into array of word
    NSMutableArray *words = [NSMutableArray arrayWithArray:[putinContent componentsSeparatedByString:@" "]];
   
    // print words array
    NSLog(@"WORD ARRAY BEFORE FILTER: %@", words);
    
    // remove all important words
    [words removeObjectsInArray:notImportant];
    
    // initial a NSCountableSet
    NSCountedSet *cSetWords = [[NSCountedSet alloc] initWithArray:words];
    NSLog(@"COUNTED SET: %@", cSetWords);
}

@end
