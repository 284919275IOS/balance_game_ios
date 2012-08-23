//
//  BGGameMainLayer.m
//  BalanceGame
//
//  Created by Akifumi on 2012/08/23.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "BGGameMainLayer.h"


@implementation BGGameMainLayer

- (id)init{
    if (self = [super init]) {
        self.isTouchEnabled = YES;
        self.isAccelerometerEnabled = YES;
    }
    return self;
}

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration{
    NSLog(@"x : %f, y : %f, z : %f", acceleration.x, acceleration.y, acceleration.z);
}

@end
