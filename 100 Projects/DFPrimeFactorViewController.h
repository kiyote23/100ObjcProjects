//
//  DFPrimeFactorViewController.h
//  100 Projects
//
//  Created by Peter Birk on 5/23/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DFPrimeFactorViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *valueLabel;
@property (weak, nonatomic) IBOutlet UILabel *factorLabel;

@end
