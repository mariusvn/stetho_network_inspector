#import "FlutterStethoPlugin.h"

@implementation FlutterStethoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"stetho_network_inspector"
            binaryMessenger:[registrar messenger]];
  FlutterStethoPlugin* instance = [[FlutterStethoPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
    result(FlutterMethodNotImplemented);
}

@end
