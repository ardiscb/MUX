//
//  SecondViewController.h
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/13/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>
{
    NSArray *seriesTitles;
    NSArray *titleImages;
    
    IBOutlet UITableView *titleTable;
}

@end
