//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"
#import <flutter_beacon/FlutterBeaconPlugin.h>
#import <flutter_udid/FlutterUdidPlugin.h>
#import <intro_slider/IntroSliderPlugin.h>
#import <shared_preferences/SharedPreferencesPlugin.h>

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterBeaconPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterBeaconPlugin"]];
  [FlutterUdidPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterUdidPlugin"]];
  [IntroSliderPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntroSliderPlugin"]];
  [FLTSharedPreferencesPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTSharedPreferencesPlugin"]];
}

@end
