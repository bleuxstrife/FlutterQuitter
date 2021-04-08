#import "FlutterQuitterPlugin.h"
#if __has_include(<flutter_quitter/flutter_quitter-Swift.h>)
#import <flutter_quitter/flutter_quitter-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_quitter-Swift.h"
#endif

@implementation FlutterQuitterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterQuitterPlugin registerWithRegistrar:registrar];
}
@end
