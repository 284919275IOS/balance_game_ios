//
//  BGTopScene.m
//  BalanceGame
//
//  Created by Akifumi on 2012/08/24.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "BGTopScene.h"
#import "BGTopBackgroundLayer.h"
#import "BGTopMainLayer.h"

@implementation BGTopScene

+ (BGTopScene *)scene{
    
    BGTopScene *scene = [self node];
    
    [scene addChild:[BGTopBackgroundLayer node]];
    
    BGTopMainLayer *mainLayer = [BGTopMainLayer node];
    [scene addChild:mainLayer];
    
    return scene;
}

@end
