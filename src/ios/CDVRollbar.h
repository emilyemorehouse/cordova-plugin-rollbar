//
//  Rollbar Cordova iOS Plugin
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import <Rollbar/Rollbar.h>

@interface CDVRollbar : CDVPlugin

- (void)init:(CDVInvokedUrlCommand *)command;
- (void)simulateCrash:(CDVInvokedUrlCommand *)command;

@end
