//
//  DetailViewController.h
//  UITableViewBugDemo
//
//  Created by Derek Arner on 3/28/15.
//  Copyright (c) 2015 makoware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

