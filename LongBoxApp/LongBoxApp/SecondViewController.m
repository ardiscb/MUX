//
//  SecondViewController.m
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/13/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "IssueViewController.h"
#import "DetailViewController.h"
#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Collection", @"Collection");
        self.tabBarItem.image = [UIImage imageNamed:@"text-list"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    seriesTitles = [[NSArray alloc] initWithObjects:@"Deadpool", @"Superman", @"Thor", @"Amazing Spider-man", @"Blackest Night", @"Green Lantern", @"Gambit", nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [seriesTitles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    if (cell != nil)
    {
        if(seriesTitles != nil)
        {
            cell.textLabel.text = [seriesTitles objectAtIndex:indexPath.row];
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
    IssueViewController *comicIssueView = [[IssueViewController alloc] initWithNibName:@"IssueViewController" bundle:nil];
    if(comicIssueView != nil)
    {
        if(indexPath.row == 0)
        {
            [self presentViewController:comicIssueView animated:true completion:nil];
        }
        //alert user that this feature has not been added yet
        if(indexPath.row > 0)
        {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Feature Not Added" message:@"Please select another title, this feature has not been added yet" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
            if(alert != nil)
            {
                [alert show];
            }
        }
    }
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
