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
- (void)viewDidAppear:(BOOL)animated
{
    //allocate right swiper
    surveySwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    //set direction
    surveySwiper.direction = UISwipeGestureRecognizerDirectionRight;
    //add swipe right gesture to label
    [swipeLabel addGestureRecognizer:surveySwiper];
    
    [super viewDidAppear:animated];
}
- (void)viewDidLoad
{
    //add black border around completed tasks label
    completeLabel.layer.borderColor = [UIColor blackColor].CGColor;
    completeLabel.layer.borderWidth = 0.75;
    
    detailView.backgroundColor = [UIColor grayColor];
    
    surveyBtn.layer.cornerRadius = 10;
    surveyBtn.clipsToBounds = YES;
    surveyBtn.layer.borderWidth = 1.5f;
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    //if user swipes right
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        SurveyViewController *surveyView = [[SurveyViewController alloc] initWithNibName:@"SurveyViewController" bundle:nil];
        if(surveyView != nil)
        {
            [self presentViewController:surveyView animated:true completion:nil];
        }
        [surveyView reloadInputViews];
    }
}
-(IBAction)onClick:(id)sender
{
//    if(surveyBtn.touchInside == true)
//    {
//        //change background color
//        surveyBtn.backgroundColor = [UIColor redColor];
//    }
    UIButton *button = (UIButton*)sender;
    //if back button is clicked
    if(button.tag == 0)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
    //if survey button is clicked
//    else if (button.tag == 1)
//    {
//        SurveyViewController *surveyView = [[SurveyViewController alloc] initWithNibName:@"SurveyViewController" bundle:nil];
//        if(surveyView != nil)
//        {
//            [self presentViewController:surveyView animated:true completion:nil];
//        }
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
