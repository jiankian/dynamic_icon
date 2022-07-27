#import "AnnDynamicIconPlugin.h"
#if __has_include(<ann_dynamic_icon/ann_dynamic_icon-Swift.h>)
#import <ann_dynamic_icon/ann_dynamic_icon-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ann_dynamic_icon-Swift.h"
#endif

@implementation AnnDynamicIconPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDynamicIconPlugin registerWithRegistrar:registrar];
}
@end
