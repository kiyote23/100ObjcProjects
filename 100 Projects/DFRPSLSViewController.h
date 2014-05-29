//
//  DFRPSLSViewController.h
//  100 Projects
//
//  Created by Peter Birk on 5/23/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DFRPSLSViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *rockButton;
@property (weak, nonatomic) IBOutlet UIButton *paperButton;
@property (weak, nonatomic) IBOutlet UIButton *scissorsButton;
@property (weak, nonatomic) IBOutlet UIButton *lizardButton;
@property (weak, nonatomic) IBOutlet UIButton *spockButton;
@property (weak, nonatomic) IBOutlet UILabel *playerMoveLabel;
@property (weak, nonatomic) IBOutlet UILabel *cpuMoveLabel;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (weak, nonatomic) IBOutlet UILabel *winLabel;
@property (weak, nonatomic) IBOutlet UILabel *playerScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *tieScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *cpuScoreLabel;
@property (strong, nonatomic) NSString *playerMove;
@property (strong, nonatomic) NSString *cpuMove;
@property (nonatomic) int playerScore;
@property (nonatomic) int tieScore;
@property (nonatomic) int cpuScore;

- (IBAction)buttonPressed:(id)sender;
- (void)compareMoves:(NSString *)playerMove withMove:(NSString *)cpuMove;

@end
