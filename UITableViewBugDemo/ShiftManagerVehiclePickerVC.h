//
//  ShiftManagerVehiclePickerVC.h
//  dojo
//
//  Created by Derek Arner on 3/27/15.
//  Copyright (c) 2015 makoware. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShiftManagerVehiclePickerVC : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *clearVehicleButton;


- (IBAction)onClearVehicle:(id)sender;


@end
