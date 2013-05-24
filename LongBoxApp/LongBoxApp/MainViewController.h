//
//  MainViewController.h
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/23/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController
{
    IBOutlet UIView *mainView;
    IBOutlet UIImageView *splashScreen;
    UISwipeGestureRecognizer *openSwiper;

}
-(IBAction)onSwipe:(UISwipeGestureRecognizer*)recognizer;

@end
