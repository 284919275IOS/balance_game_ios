//
//  BGSelectUseFacebookMainLayer.h
//  BalanceGame
//
//  Created by Akifumi on 2012/08/30.
//  Copyright 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@interface BGSelectUseFacebookMainLayer : CCLayer {
    
}
@property (nonatomic, copy) void (^onPressedFacebookLoginButton)();
@property (nonatomic, copy) void (^onPressedSkipButton)();
- (void)notActivateButtons;
@end
