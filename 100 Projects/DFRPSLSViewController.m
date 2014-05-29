//
//  DFRPSLSViewController.m
//  100 Projects
//
//  Created by Peter Birk on 5/23/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import "DFRPSLSViewController.h"

@interface DFRPSLSViewController ()

@property (nonatomic, strong) NSDictionary *moves;

@end

@implementation DFRPSLSViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _playerScore = 0;
        _tieScore = 0;
        _cpuScore = 0;
        _moves = @{@"Rock":@{@"Scissors": @"breaks", @"Lizard":@"crushes"}, @"Paper":@{@"Rock":@"covers", @"Spock":@"disproves"}, @"Scissors":@{@"Paper":@"cuts", @"Lizard":@"decapitates"}, @"Lizard":@{@"Spock":@"poisons", @"Paper":@"eats"}, @"Spock":@{@"Scissors":@"smashes",@"Rock":@"vaporizes"}};
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    _playerMoveLabel.text = @"Press a button to play";
    _cpuMoveLabel.text = @"";
    _playerScoreLabel.text = [NSString stringWithFormat:@"%i",_playerScore];
    _tieScoreLabel.text = [NSString stringWithFormat:@"%i",_tieScore];
    _cpuScoreLabel.text = [NSString stringWithFormat:@"%i",_cpuScore];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSString *)cpuPick
{
    NSUInteger x = arc4random_uniform(5);
    NSArray *moves = @[@"Rock",@"Paper",@"Scissors",@"Lizard",@"Spock"];
    return moves[x];
}

- (void)compareMoves:(NSString *)player withMove:(NSString *)cpu
{
    if ([player isEqualToString:cpu]) {
        _tieScore++;
        _resultLabel.text = [NSString stringWithFormat:@"%@ meets %@",player,cpu];
        _winLabel.text = @"It's a tie!";
        _tieScoreLabel.text = [NSString stringWithFormat:@"%i",_tieScore];
        return;
    }
    
    NSDictionary *move = [_moves objectForKey:player];
    if ([move objectForKey:cpu] != nil) {
        _resultLabel.text = [NSString stringWithFormat:@"%@ %@ %@!",player,[move objectForKey:cpu],cpu];
        _winLabel.text = @"Player wins!";
        _playerScore++;
        _playerScoreLabel.text = [NSString stringWithFormat:@"%i",_playerScore];
        return;
    }
    move = [_moves objectForKey:cpu];
    _resultLabel.text = [NSString stringWithFormat:@"%@ %@ %@!",cpu,[move objectForKey:player],player];
    _winLabel.text = @"CPU wins!";
    _cpuScore++;
    _cpuScoreLabel.text = [NSString stringWithFormat:@"%i",_cpuScore];
    return;
    /*
    for (NSDictionary *move in _moves) {
        if ([move isEqual:player]) {
            for (NSString *result in move) {
                if ([result isEqualToString:cpu]) {
                    _resultLabel.text = [NSString stringWithFormat:@"%@ %@ %@",player,[move objectForKey:result],cpu];
                    _winLabel.text = @"Player wins!";
                    _playerScore++;
                    _playerScoreLabel.text = [NSString stringWithFormat:@"%i",_playerScore];
                    return;
                }
            }
        }
    }
    for (NSDictionary *move in _moves) {
        if ([move isEqual:cpu]) {
            for (id result in move) {
                if ([result isEqualToString:player]) {
                    _resultLabel.text = [NSString stringWithFormat:@"%@ %@ %@",cpu,_moves[move[result]],player];
                    _winLabel.text = @"CPU wins!";
                    _cpuScore++;
                    _cpuScoreLabel.text = [NSString stringWithFormat:@"%i",_cpuScore];
                    return;
                }
            }
        }
    }
     */
}

- (IBAction)buttonPressed:(UIButton *)sender
{
    if (sender == _rockButton)
        _playerMove = @"Rock";
    else if (sender == _paperButton)
        _playerMove = @"Paper";
    else if (sender == _scissorsButton)
        _playerMove = @"Scissors";
    else if (sender == _lizardButton)
        _playerMove = @"Lizard";
    else
        _playerMove = @"Spock";
    _cpuMove = [self cpuPick];
    _playerMoveLabel.text = _playerMove;
    _cpuMoveLabel.text = _cpuMove;
    [self compareMoves:_playerMove withMove:_cpuMove];
}

@end
