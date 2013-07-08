//
//  ViewController.h
//  ClockApp
//
//  Created by Moimoi on 2013/01/23.
//  Copyright (c) 2013年 Moimoi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>


@interface ViewController : UIViewController{
    IBOutlet UILabel *clockLabel;
    NSTimer *myTicker;
    SystemSoundID soundID;
}
-(void)showDate;
@end
