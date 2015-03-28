//
//  ShiftManagerVC.h
//  dojo
//
//  Created by Derek Arner on 3/26/15.
//  Copyright (c) 2015 makoware. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Shift;
@interface ShiftManagerVC : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) IBOutlet UIBarButtonItem *doneButton;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *cancelButton;
@property (strong, nonatomic) IBOutlet UIButton *addCrewButton;

@property (strong, nonatomic) IBOutlet UITableView *crewTableView;
@property (strong, nonatomic) IBOutlet UITableView *vehicleTableView;



- (IBAction)onDone:(id)sender;
- (IBAction)onCancel:(id)sender;
- (IBAction)onAddCrew:(id)sender;

@end
