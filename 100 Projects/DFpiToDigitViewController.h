//
//  DFpiToDigitViewController.h
//  100 Projects
//
//  Created by Peter Birk on 5/20/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DFpiToDigitViewController : UIViewController

@property (strong, nonatomic) NSNumber *displayPi;
@property (weak, nonatomic) IBOutlet UILabel *displayPiLabel;
@property (weak, nonatomic) IBOutlet UISlider *piSlider;
@property (weak, nonatomic) IBOutlet UILabel *piLabel;

- (IBAction)sliderChanged:(id)sender;

@end
