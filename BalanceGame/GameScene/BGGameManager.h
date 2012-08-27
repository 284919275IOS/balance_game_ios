//
//  BGGameManager.h
//  BalanceGame
//
//  Created by Akifumi on 2012/08/26.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

#define TOWER_ANGLE(acceleration) 60 * pow(acceleration.y, 2) + 30 * pow(acceleration.z, 2)

typedef enum {
    GameStateTouch,
    GameStateQuestion,
    GameStatePlaing,
    GameStateOver,
} GameState;

@interface BGGameManager : CCNode {
    
}
@property (readonly) GameState currentGameState;
@property (readonly) ccTime gameTime, awayTouchTime;
@property (readonly) BOOL onLeftTouchArea, onRightTouchArea;
@property (nonatomic, copy) void (^onShowTouchWarning)(BOOL flag);
@property (nonatomic, copy) void (^onSendAcceleration)(UIAcceleration *acceleration);
- (void)setOnLeftTouchArea:(BOOL)flag;
- (void)setOnRightTouchArea:(BOOL)flag;
- (void)getAcceleration:(UIAcceleration *)acceleration;
@end
