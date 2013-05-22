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
        self.tabBarItem.image = [UIImage imageNamed:@"plus-sign"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    seriesTitle.delegate = self;
    comicTitle.delegate = self;
    issueNum.delegate = self;
    publisher.delegate = self;
    
    //addComic.tintColor = [UIColor grayColor];
    //Close keyboard when clicked off UITextField
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeKeyboard)];
    [self.view addGestureRecognizer:tap];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

-(IBAction)onClick:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success!" message:@"The add comic feature will be added. This is your success message!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    if(alert != nil)
    {
        [alert show];
    }
}
//- (void)textFieldDidBeginEditing:(UITextField *)textField
//{
//    /* keyboard is visible, move views */
//}
//
//- (void)textFieldDidEndEditing:(UITextField *)textField
//{
//    /* resign first responder, hide keyboard, move views */
//    
//}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}
- (void)closeKeyboard
{
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
