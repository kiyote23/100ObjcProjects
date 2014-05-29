//
//  DFFibonacciViewController.h
//  100 Projects
//
//  Created by Peter Birk on 5/21/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DFFibonacciViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (weak, nonatomic) IBOutlet UILabel *places;
@property (weak, nonatomic) IBOutlet UILabel *display;
@property (strong, nonatomic) NSString *sequence;

- (IBAction)sliderChanged:(id)sender;
- (NSString *)buildSequence:(long)places;


@end
