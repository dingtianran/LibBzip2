//
//  ViewController.m
//  bzip2Demo
//
//  Created by dingtr on 13-4-18.
//  Copyright (c) 2013年 dingtr. All rights reserved.
//

#import "ViewController.h"
#import "NSData+Bzip2.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSString *path = [[NSBundle mainBundle] pathForResource:@"untitled.txt" ofType:@"bz2"];
    NSData *bzippedData = [NSData dataWithContentsOfFile:path];
    NSData *decompressed = [bzippedData bunzip2];
    NSString *rawStr = [[[NSString alloc] initWithData:decompressed encoding:NSUTF8StringEncoding] autorelease];
    NSLog(@"result txt->%@",rawStr);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
