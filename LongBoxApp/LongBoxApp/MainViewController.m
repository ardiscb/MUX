//
//  MainViewController.m
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    //allocate left swiper
    openSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    openSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    //add swipe to image view
    [splashScreen addGestureRecognizer:openSwiper];
    
    [super viewDidAppear:animated];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
//-(IBAction)onClick:(id)sender
//{
//    [self dismissViewControllerAnimated:true completion:nil];
//}
-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    //if user swipes left
    if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
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
