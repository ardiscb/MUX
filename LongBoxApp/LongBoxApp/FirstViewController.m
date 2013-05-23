//
//  FirstViewController.m
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/13/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Add Comic", @"Add Comic");
        self.tabBarItem.image = [UIImage imageNamed:@"plus"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    //set delegate for text fields
    //for dismissing keyboard when return is clicked
    seriesTitle.delegate = self;
    comicTitle.delegate = self;
    issueNum.delegate = self;
    publisher.delegate = self;
    
    //make button rounded
    addComic.layer.cornerRadius = 10;
    addComic.clipsToBounds = YES;
    addComic.layer.borderWidth = 1.5f;
    addComic.layer.borderColor = [UIColor blackColor].CGColor;
    
    //Close keyboard when clicked off UITextField
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard)];
    [self.view addGestureRecognizer:tap];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender
{
    //if add button is clicked
    if(addComic.touchInside == true)
    {
        //change background color
        addComic.backgroundColor = [UIColor redColor];
    }
    //alert users that the add comic feature will be added
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success!" message:@"The add comic feature will be added. This is your success message!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if(alert != nil)
    {
        [alert show];
    }
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    /* keyboard is visible, move views */
    if([textField isEqual:publisher])
    {
        [scrollView setContentOffset:CGPointMake(100, 150)];
        firstView.frame = CGRectMake(0, 0, 320, 250);
    }
    if([textField isEqual:issueNum])
    {
        [scrollView setContentOffset:CGPointMake(100, 150)];
        firstView.frame = CGRectMake(0, 0, 320, 250);
    }
    
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    //push scroll and view up for keyboard
    scrollView.frame = CGRectMake(0, 0, 320, 460);
    firstView.frame = CGRectMake(0, 0, 320, 460);

    [textField resignFirstResponder];
    return NO;
}
- (void)closeKeyboard
{
    //set scroll and view back
    scrollView.frame = CGRectMake(0, 0, 320, 460);
    firstView.frame = CGRectMake(0, 0, 320, 460);
    //dismiss keyboard
    [seriesTitle resignFirstResponder];
    [comicTitle resignFirstResponder];
    [issueNum resignFirstResponder];
    [publisher resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
