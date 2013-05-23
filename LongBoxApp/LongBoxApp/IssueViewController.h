//
//  IssueViewController.h
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/13/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IssueViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSArray *issueTitles;
    IBOutlet UITableView *issueTable;
}
@end
