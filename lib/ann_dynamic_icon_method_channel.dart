import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ann_dynamic_icon_platform_interface.dart';

/// An implementation of [AnnDynamicIconPlatform] that uses method channels.
class MethodChannelDynamicIcon extends AnnDynamicIconPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('dynamic_icon');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
