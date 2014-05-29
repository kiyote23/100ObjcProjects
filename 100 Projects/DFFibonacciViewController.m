//
//  DFFibonacciViewController.m
//  100 Projects
//
//  Created by Peter Birk on 5/21/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import "DFFibonacciViewController.h"

@interface DFFibonacciViewController ()

@end

@implementation DFFibonacciViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _sequence = @"";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _places.text = [NSString stringWithFormat:@"%ld",(long)_slider.value];
    _sequence = [self buildSequence:(long)_slider.value];
    _display.text = _sequence;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sliderChanged:(id)sender {
    if (sender == _slider) {
        _places.text = [NSString stringWithFormat:@"%ld",(long)_slider.value];
        _sequence = [self buildSequence:(long)_slider.value];
        _display.text = _sequence;
    }
}

- (NSString *)buildSequence:(long)places {
    NSString *sequence = [[NSString alloc] init];
    int x1 = 0;
    int x2 = 1;
    sequence = [NSString stringWithFormat:@"%i,",x1];
    for (int y = 1; y < (long)places; y++) {
        sequence = [sequence stringByAppendingString:[NSString stringWithFormat:@" %i,",x2]];
        int tmp = x1;
        x1 = x2;
        x2 = x2 + tmp;
    }
    return sequence;
}
@end
