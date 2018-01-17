//
//  Rollbar Cordova iOS Plugin
//

#import "CDVRollbar.h"

@implementation CDVRollbar

- (void)pluginInitialize
{
    NSString *RollbarAccessToken = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"RollbarAccessToken"];
    NSString *RollbarEnvironment = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"RollbarEnvironment"];

    RollbarConfiguration *config = [RollbarConfiguration configuration];
    config.crashLevel = @"critical";
    config.environment = RollbarEnvironment;

    [Rollbar initWithAccessToken:RollbarAccessToken configuration:config];
}

- (void)init:(CDVInvokedUrlCommand *)command
{

}

- (void)simulateCrash:(CDVInvokedUrlCommand *)command
{
    NSLog( @"forcing crash" );
    kill( getpid(), SIGABRT );
}

@end
