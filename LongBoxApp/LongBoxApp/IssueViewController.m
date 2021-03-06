//
//  IssueViewController.m
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/13/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "DetailViewController.h"
#import "IssueViewController.h"

@interface IssueViewController ()

@end

@implementation IssueViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    issueTitles = [[NSArray alloc] initWithObjects:@"1", @"5", @"7", @"10", @"15", nil];
    
    issueTable.backgroundColor = [UIColor grayColor];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [issueTitles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    if (cell != nil)
    {
        if(issueTitles != nil)
        {
            cell.textLabel.text = [issueTitles objectAtIndex:indexPath.row];
            cell.textLabel.textColor = [UIColor whiteColor];
            if(indexPath.row > 0)
            {
                cell.selectionStyle = UITableViewCellSelectionStyleGray;
                //cell.userInteractionEnabled = NO;
            }
        }
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailViewController *comicDetailView = [[DetailViewController alloc] initWithNibName:@"DetailViewController" bundle:nil];
    if(comicDetailView != nil)
    {
        if(indexPath.row == 0)
        {
            [self presentViewController:comicDetailView animated:true completion:nil];
        }
        //alert user that this feature has not been added yet
        if(indexPath.row > 0)
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Feature Not Added" message:@"Please select another issue number, this feature has not been added yet" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
            if(alert != nil)
            {
                [alert show];
            }
        }
    }
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    if(button.tag == 0)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
