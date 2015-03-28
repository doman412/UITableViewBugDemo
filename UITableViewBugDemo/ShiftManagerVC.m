//
//  ShiftManagerVC.m
//  dojo
//
//  Created by Derek Arner on 3/26/15.
//  Copyright (c) 2015 makoware. All rights reserved.
//

#import "ShiftManagerVC.h"
#import "ShiftManager.h"
#import "Vehicle.h"

@implementation ShiftManagerVC

#pragma mark - view methods

- (void)viewDidLoad
{
    self.doneButton.enabled = NO;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [self.crewTableView reloadData];
    [self.vehicleTableView reloadData];
}

#pragma mark - button methods

- (IBAction)onDone:(id)sender
{
    // save some stuff
    
    [self close];
}

- (IBAction)onCancel:(id)sender
{
    [self close];
}

- (IBAction)onAddCrew:(id)sender
{
    NSLog(@"onAddCrew");
}

- (void)close
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - tableview delegate methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(tableView==self.crewTableView){
//        if([ShiftManager shiftIsSet]){
//            return [ShiftManager shift].crew.count;
//        }
        return 0;
    } else {
        return 1;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44.0;
}

//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    if(tableView==self.vehicleTableView){
//        [cell.detailTextLabel sizeToFit];
//    }
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell;
    
    if(tableView==self.vehicleTableView){
        cell = [self cellForVehicleTableAtIndexPath:indexPath];
    } else if(tableView==self.crewTableView){
        cell = [self cellForCrewTableAtIndexPath:indexPath];
    }
    
    
    return cell;
}

- (UITableViewCell*)cellForVehicleTableAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell *cell = [self.vehicleTableView dequeueReusableCellWithIdentifier:@"VehicleCell"];
    
    Vehicle *vehicle = [ShiftManager vehicle];
    
    if(vehicle){
        [cell.textLabel setText: vehicle.name];
        [cell.detailTextLabel setText: vehicle.number ? : @""];
        NSLog(@"detail text label: %@", cell.detailTextLabel);
    } else {
        // no vehicle
        [cell.textLabel setText: @"Tap to select a vehicle."];
        [cell.detailTextLabel setText: @""];
        
    }
    
//    [cell setNeedsUpdateConstraints];
    
    return cell;
}

- (UITableViewCell*)cellForCrewTableAtIndexPath:(NSIndexPath*)indexPath
{
    UITableViewCell *cell = [self.crewTableView dequeueReusableCellWithIdentifier:@"CrewCell"];
    
//    // the crew property of a shift is an array of CrewMember objects
//    CrewMember *crew = [[ShiftManager shift].crew objectAtIndex:indexPath.row];
//    
//    
//    cell.textLabel.text = [crew.user getFullName];
//    cell.detailTextLabel.text = [crew getRolesString];
    
    
    return cell;
}

@end
