//
//  ShiftManager.h
//  dojo
//
//  Created by Derek Arner on 3/24/15.
//  Copyright (c) 2015 makoware. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Vehicle;
@interface ShiftManager : NSObject

//@property (strong, nonatomic) UIButton *shiftButton;
//@property (strong, nonatomic) Shift *shift;
@property (strong, nonatomic) Vehicle *vehicle;
@property (strong, nonatomic) NSMutableArray *vehicles;

+(instancetype)manager;

+(Vehicle*)vehicle;

@end
