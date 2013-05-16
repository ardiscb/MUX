//
//  DetailViewController.m
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/13/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "SurveyViewController.h"
#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

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
    //add black border around completed tasks label
    completeLabel.layer.borderColor = [UIColor blackColor].CGColor;
    completeLabel.layer.borderWidth = 0.75;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    //if back button is clicked
    if(button.tag == 0)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
    //if survey button is clicked
    else if (button.tag == 1)
    {
        SurveyViewController *surveyView = [[SurveyViewController alloc] initWithNibName:@"SurveyViewController" bundle:nil];
        if(surveyView != nil)
        {
            [self presentViewController:surveyView animated:true completion:nil];
        }
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
