//
//  BGGameTower.h
//  BalanceGame
//
//  Created by Akifumi on 2012/08/24.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface BGGameTower : CCSprite {
    
}
- (void)shakeWithAngle:(float)angle;
- (void)fallWithAcceleration:(UIAcceleration *)acceleration;
@end
