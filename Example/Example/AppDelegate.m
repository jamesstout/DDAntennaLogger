#import "AppDelegate.h"


// CocoaLumberjack
#import "CocoaLumberjack.h"
static const int ddLogLevel = DDLogFlagInfo;
// Antenna
#import <Antenna.h>

// CocoaLumberjack + Antenna
#import "DDAntennaLogger.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // Antenna setup
    [[Antenna sharedLogger] addChannelWithURL:[NSURL URLWithString:@"http://localhost:12345/log"] method:@"POST"];
    [[Antenna sharedLogger] startLoggingApplicationLifecycleNotifications];

    // CocoaLumberjack setup
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];

    // Antenna-CocoaLumberjack setup
    DDAntennaLogger *logger = [[DDAntennaLogger alloc] initWithAntenna:[Antenna sharedLogger]];
    [DDLog addLogger:logger];

    DDLogInfo(@"INFO DDAntennaLogger is cool!");
    DDLogVerbose(@"VERB DDAntennaLogger is cool!");
    DDLogDebug(@"DEBUG DDAntennaLogger is cool!");

    return YES;
}

@end
