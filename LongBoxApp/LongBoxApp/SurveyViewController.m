//
//  SurveyViewController.m
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/16/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "DetailViewController.h"
#import "SurveyViewController.h"

@interface SurveyViewController ()

@end

@implementation SurveyViewController

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
    //load survey page
    //set url
    NSURL *url = [[NSURL alloc] initWithString:@"http://www.surveymonkey.com/s/CCCLKC2"];
    if(url != nil)
    {
        NSLog(@"url loaded");
        //request url
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        if (request != nil)
        {
            NSLog(@"request loaded");
            //scale
            surveyWebView.scalesPageToFit = true;
            //load request
            [surveyWebView loadRequest:request];
        }
    }
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
