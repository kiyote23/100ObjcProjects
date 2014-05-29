//
//  DFProgramViewController.m
//  100 Projects
//
//  Created by Peter Birk on 5/22/14.
//  Copyright (c) 2014 Dork Farm. All rights reserved.
//

#import "DFProgramViewController.h"
#import "DFpiToDigitViewController.h"
#import "DFFibonacciViewController.h"
#import "DFPrimeFactorViewController.h"
#import "DFRPSLSViewController.h"
#import "DFNextPrimeViewController.h"

@interface DFProgramViewController ()

@property (nonatomic,strong) NSArray *programs;

@end

@implementation DFProgramViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    return [self init];
}

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        UINavigationItem *navItem = self.navigationItem;
        navItem.title = @"100 Projects";
        _programs = @[@"Pi to Nth Digit",@"Fibonacci to Nth Digit",@"Prime Factors",@"Rock, Paper, Scissors",@"Next Prime"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [_programs count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DFProgCell"];
    // Configure the cell...
    cell.textLabel.text = _programs[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        DFpiToDigitViewController *pdvc = [[DFpiToDigitViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:pdvc animated:YES];
    }
    else if (indexPath.row == 1) {
        DFFibonacciViewController *fvc = [[DFFibonacciViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:fvc animated:YES];
    }
    else if (indexPath.row == 2) {
        DFPrimeFactorViewController *pvc = [[DFPrimeFactorViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:pvc animated:YES];
    }
    else if (indexPath.row == 3) {
        DFRPSLSViewController *rpsvc = [[DFRPSLSViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:rpsvc animated:YES];
    }
    else {
        DFNextPrimeViewController *npvc = [[DFNextPrimeViewController alloc] initWithNibName:nil bundle:nil];
        [self.navigationController pushViewController:npvc animated:YES];
    }
    
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
