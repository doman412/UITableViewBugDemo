//
//  ShiftManagerVehiclePickerVC.m
//  dojo
//
//  Created by Derek Arner on 3/27/15.
//  Copyright (c) 2015 makoware. All rights reserved.
//

#import "ShiftManagerVehiclePickerVC.h"

#import "ShiftManager.h"
#import "Vehicle.h"


@interface ShiftManagerVehiclePickerVC (){
    NSMutableArray *vehicles;
}

@end

@implementation ShiftManagerVehiclePickerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    vehicles = [ShiftManager manager].vehicles;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return vehicles.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    // data object
    Vehicle *obj = [vehicles objectAtIndex:indexPath.row];
    
    // Configure the cell...
    cell.accessoryType = UITableViewCellAccessoryNone;
    [cell.textLabel setText:obj.name];
    [cell.detailTextLabel setText:obj.number];
    
    if([ShiftManager vehicle] == obj){
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    Vehicle *vehicle = [vehicles objectAtIndex:indexPath.row];
    
    // chose the vehicle and pop back
    [ShiftManager manager].vehicle = vehicle;
    
    [self.navigationController popViewControllerAnimated:YES];
}

#pragma mark - button methods

- (IBAction)onClearVehicle:(id)sender
{
    
}


@end
