//
//  DFNextPrimeViewController.h
//  100 Projects
//
//  Created by Peter Birk on 5/28/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DFNextPrimeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *primeLabel;
@property (weak, nonatomic) IBOutlet UIButton *primeButton;
@property (nonatomic) int currentPrime;

- (IBAction)buttonPressed:(id)sender;

@end
