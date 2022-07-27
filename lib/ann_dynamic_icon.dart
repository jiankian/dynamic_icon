
import 'ann_dynamic_icon_platform_interface.dart';

class AnnDynamicIcon {
  Future<String?> getPlatformVersion() {
    return AnnDynamicIconPlatform.instance.getPlatformVersion();
  }
}
