//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<amplify_api_ios/AmplifyApi.h>)
#import <amplify_api_ios/AmplifyApi.h>
#else
@import amplify_api_ios;
#endif

#if __has_include(<amplify_auth_cognito_ios/AuthCognito.h>)
#import <amplify_auth_cognito_ios/AuthCognito.h>
#else
@import amplify_auth_cognito_ios;
#endif

#if __has_include(<amplify_core/AmplifyCorePlugin.h>)
#import <amplify_core/AmplifyCorePlugin.h>
#else
@import amplify_core;
#endif

#if __has_include(<amplify_datastore/AmplifyDataStorePlugin.h>)
#import <amplify_datastore/AmplifyDataStorePlugin.h>
#else
@import amplify_datastore;
#endif

#if __has_include(<amplify_flutter_ios/Amplify.h>)
#import <amplify_flutter_ios/Amplify.h>
#else
@import amplify_flutter_ios;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [AmplifyApi registerWithRegistrar:[registry registrarForPlugin:@"AmplifyApi"]];
  [AuthCognito registerWithRegistrar:[registry registrarForPlugin:@"AuthCognito"]];
  [AmplifyCorePlugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyCorePlugin"]];
  [AmplifyDataStorePlugin registerWithRegistrar:[registry registrarForPlugin:@"AmplifyDataStorePlugin"]];
  [Amplify registerWithRegistrar:[registry registrarForPlugin:@"Amplify"]];
}

@end
