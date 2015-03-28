//
//  ShiftManager.m
//  dojo
//
//  Created by Derek Arner on 3/24/15.
//  Copyright (c) 2015 makoware. All rights reserved.
//

#import "ShiftManager.h"
#import "Vehicle.h"

@implementation ShiftManager

- (id)init
{
    self = [super init];
    if(self){
        self.vehicles = [NSMutableArray new];
        
        Vehicle *v1 = [Vehicle new];
        v1.name = @"vehicle 1";
        v1.number = @"1234";
        
        Vehicle *v2 = [Vehicle new];
        v2.name = @"vehicle 2";
        
        [self.vehicles addObjectsFromArray:@[v1,v2]];
        
        self.vehicle = v1;
    }
    return self;
}

+(instancetype)manager
{
    static ShiftManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

+(Vehicle *)vehicle
{
    return [ShiftManager manager].vehicle;
}

@end
