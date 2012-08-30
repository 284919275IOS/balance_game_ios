//
//  BGFacebookManager.m
//  BalanceGame
//
//  Created by Akifumi on 2012/08/30.
//
//

#import "BGFacebookManager.h"
#import "AppDelegate.h"
#import <FBiOSSDK/FacebookSDK.h>

static BGFacebookManager *shared = nil;

@implementation BGFacebookManager
@synthesize currentUser, friends;

+ (BGFacebookManager *)sharedManager{
    if (!shared) {
        shared = [[self alloc] init];
    }
    return shared;
}

- (void)requestUsers{
    FBSession *session = ((AppController *)[UIApplication sharedApplication].delegate).session;

    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:@"name, picture", @"fields", nil];
    
    FBRequest *reqMe = [[FBRequest alloc] initWithSession:session graphPath:@"me" parameters:params HTTPMethod:@"GET"];
    [reqMe startWithCompletionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
//        NSLog(@"result : %@", result);
        if (!error) {
            dispatch_queue_t q = dispatch_queue_create(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
            dispatch_async(q, ^(){
                self.currentUser = [[BGFacebookUser alloc] init];
                self.currentUser.userId = [result objectForKey:@"id"];
                self.currentUser.name = [result objectForKey:@"name"];
                self.currentUser.pictureUrl = [result objectForKey:@"picture"];
            });
        }
    }];
    
    FBRequest *reqFriends = [[FBRequest alloc] initWithSession:session graphPath:@"me/friends" parameters:params HTTPMethod:@"GET"];
    [reqFriends startWithCompletionHandler:^(FBRequestConnection *connection, id result, NSError *error) {
        NSLog(@"result : %@", result);
        if (!error) {
            dispatch_queue_t q = dispatch_queue_create(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
            dispatch_async(q, ^(){
//                NSLog(@"result : %@", [result objectForKey:@"data"]);
                NSArray *array = [result objectForKey:@"data"];

//                self.currentUser = [[BGFacebookUser alloc] init];
//                self.currentUser.userId = [result objectForKey:@"id"];
//                self.currentUser.name = [result objectForKey:@"name"];
//                self.currentUser.pictureUrl = [result objectForKey:@"picture"];
            });
        }
    }];

}

- (void)dealloc{
    shared = nil;
    [super dealloc];
}

@end