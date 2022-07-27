
import 'dynamic_icon_platform_interface.dart';

class DynamicIcon {
  Future<String?> getPlatformVersion() {
    return DynamicIconPlatform.instance.getPlatformVersion();
  }
}
