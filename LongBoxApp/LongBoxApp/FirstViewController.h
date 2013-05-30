//
//  FirstViewController.h
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/13/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface FirstViewController : UIViewController <UITextFieldDelegate>
{
    IBOutlet UIView *firstView;
        
    IBOutlet UIScrollView *scrollView;
    
    IBOutlet UITextField *seriesTitle;
    IBOutlet UITextField *comicTitle;
    IBOutlet UITextField *issueNum;
    IBOutlet UITextField *publisher;

    IBOutlet UILabel *swipeLabel;
    UISwipeGestureRecognizer *addSwiper;
}

-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;

@end
