import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ann_dynamic_icon_method_channel.dart';

abstract class AnnDynamicIconPlatform extends PlatformInterface {
  /// Constructs a DynamicIconPlatform.
  AnnDynamicIconPlatform() : super(token: _token);

  static final Object _token = Object();

  static AnnDynamicIconPlatform _instance = MethodChannelDynamicIcon();

  /// The default instance of [AnnDynamicIconPlatform] to use.
  ///
  /// Defaults to [MethodChannelDynamicIcon].
  static AnnDynamicIconPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AnnDynamicIconPlatform] when
  /// they register themselves.
  static set instance(AnnDynamicIconPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
