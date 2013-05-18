//
//  CustomCellViewController.h
//  LongBoxApp
//
//  Created by Courtney Ardis on 5/17/13.
//  Copyright (c) 2013 Courtney Ardis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomCellViewController : UITableViewCell
{
//    IBOutlet UILabel *textLabel;
    //IBOutlet UIImageView *imageView;
}
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UIImageView *titleImage;
@end
