#import "XButtonPlugin.h"
#if __has_include(<x_button/x_button-Swift.h>)
#import <x_button/x_button-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "x_button-Swift.h"
#endif

@implementation XButtonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftXButtonPlugin registerWithRegistrar:registrar];
}
@end
