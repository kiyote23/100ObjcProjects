//
//  DFNextPrimeViewController.m
//  100 Projects
//
//  Created by Peter Birk on 5/28/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import "DFNextPrimeViewController.h"

@interface DFNextPrimeViewController ()

@end

@implementation DFNextPrimeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _currentPrime = 2;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _primeLabel.text = [NSString stringWithFormat:@"%i",_currentPrime];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
    if (sender == _primeButton) {
        int x = _currentPrime + 1;
        while (![self isPrime:x]) {
            x++;
        }
        _currentPrime = x;
        _primeLabel.text = [NSString stringWithFormat:@"%i",_currentPrime];
    }
}

- (BOOL)isPrime:(int)number
{
    if (number % 2 == 0)
        return FALSE;
    for (int x = 3; x < (number/2); x+=2) {
        if (number % x == 0)
            return FALSE;
    }
    return TRUE;
}
@end
