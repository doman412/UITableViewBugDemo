//
//  MasterViewController.h
//  UITableViewBugDemo
//
//  Created by Derek Arner on 3/28/15.
//  Copyright (c) 2015 makoware. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


@end

