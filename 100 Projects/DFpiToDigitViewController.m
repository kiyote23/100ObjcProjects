//
//  DFpiToDigitViewController.m
//  100 Projects
//
//  Created by Peter Birk on 5/20/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import "DFpiToDigitViewController.h"

@interface DFpiToDigitViewController ()

@end

@implementation DFpiToDigitViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _displayPi = [[NSNumber alloc] initWithDouble:M_PI];
           }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _displayPiLabel.text = [NSString stringWithFormat:@"%ld", (long)_piSlider.value];
    // I found the code for these two lines here:
    // http://stackoverflow.com/questions/560517/make-a-float-only-show-two-decimal-places
    NSString *formatString = [NSString stringWithFormat:@"%%.%ldf",(long)_piSlider.value];
    _piLabel.text = [NSString stringWithFormat:formatString, _displayPi.floatValue];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChanged:(id)sender {
    // I found the code for this line here:
    // http://stackoverflow.com/questions/19456012/how-do-i-place-a-slider-value-in-label
    if (sender == _piSlider) {
        _displayPiLabel.text = [NSString stringWithFormat:@"%ld", (long)_piSlider.value];
        NSString *formatString = [NSString stringWithFormat:@"%%.%ldf", (long)_piSlider.value];
        _piLabel.text = [NSString stringWithFormat:formatString, _displayPi.floatValue];
    }
}
@end
