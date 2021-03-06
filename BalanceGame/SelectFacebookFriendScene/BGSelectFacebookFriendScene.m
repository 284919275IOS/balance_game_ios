//
//  BGSelectFacebookFriendScene.m
//  BalanceGame
//
//  Created by Akifumi on 2012/08/30.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import "BGSelectFacebookFriendScene.h"
#import "BGSelectFacebookFriendTableLayer.h"
#import "BGRFacebookUser.h"

#import "BGSelectCourseScene.h"

@implementation BGSelectFacebookFriendScene

+ (BGSelectFacebookFriendScene *)scene{
    BGSelectFacebookFriendScene *scene = [self node];
    
    BGSelectFacebookFriendTableLayer *tableLayer = [BGSelectFacebookFriendTableLayer node];
    [scene addChild:tableLayer];
    
    tableLayer.onPressedFacebookFriend = ^(BGRFacebookUser *selectedUser){
        [[CCDirector sharedDirector] pushScene:[CCTransitionFade transitionWithDuration:1.0 scene:[BGSelectCourseScene sceneWithSelectedUser:selectedUser] withColor:ccc3(0, 0, 0)]];
    };
    
    return scene;
}

@end
