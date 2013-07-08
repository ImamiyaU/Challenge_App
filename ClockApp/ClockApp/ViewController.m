//
//  ViewController.m
//  ClockApp
//
//  Created by Moimoi on 2013/01/23.
//  Copyright (c) 2013年 Moimoi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    myTicker = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                target:self
                                              selector:@selector(showDate)
                                              userInfo:nil
                                               repeats:YES];

    NSString *path = [[NSBundle mainBundle] pathForResource:@"tama1" ofType:@"wav" ];
    NSURL *url = [NSURL fileURLWithPath:path];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &soundID);
}
- (void)showDate{
    NSDateFormatter *formatter =[[NSDateFormatter alloc] init];
    NSDate *date = [NSDate date];
    //NSDateFormatterNoStyle = 
    [formatter setTimeStyle:NSDateFormatterFullStyle];
    [clockLabel setText:[formatter  stringFromDate:date]];
    AudioServicesPlaySystemSound(soundID);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
