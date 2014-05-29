//
//  DFPrimeFactorViewController.m
//  100 Projects
//
//  Created by Peter Birk on 5/23/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import "DFPrimeFactorViewController.h"

@interface DFPrimeFactorViewController ()

@property (nonatomic, strong) NSString *factorString;

@end

@implementation DFPrimeFactorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _factorString = @"";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _factorLabel.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)isPrime:(int)number
{
    number = abs(number);
    if (number < 2)
        return FALSE;
    if (number == 2)
        return TRUE;
    for (int x = 3; x <= number / 2; x+=2) {
        if (number % x == 0)
            return FALSE;
    }
    return TRUE;
}

- (void)primeFactor:(int)value {
    for (int x = 2; x <= value; x++) {
        if ([self isPrime:x]) {
            if (value % x == 0) {
                if (value == x) {
                    _factorString = [_factorString stringByAppendingString:[NSString stringWithFormat:@"%i", x]];
                    return;
                }
                _factorString = [_factorString stringByAppendingString:[NSString stringWithFormat:@"%i x ", x]];
                value = value / x;
                [self primeFactor:value];
                return;
            }
        }
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    int value = [textField.text intValue];
    _factorString = @"";
    if ([self isPrime:value]) {
        _factorString = [NSString stringWithFormat:@"%i is prime.",value];
        _factorLabel.text=_factorString;
        return;
    }
    [self primeFactor:value];
    _factorLabel.text = _factorString;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
