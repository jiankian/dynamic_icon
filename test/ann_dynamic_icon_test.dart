import 'package:flutter_test/flutter_test.dart';
import 'package:ann_dynamic_icon/ann_dynamic_icon.dart';
import 'package:ann_dynamic_icon/ann_dynamic_icon_platform_interface.dart';
import 'package:ann_dynamic_icon/ann_dynamic_icon_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDynamicIconPlatform 
    with MockPlatformInterfaceMixin
    implements AnnDynamicIconPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AnnDynamicIconPlatform initialPlatform = AnnDynamicIconPlatform.instance;

  test('$MethodChannelDynamicIcon is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDynamicIcon>());
  });

  test('getPlatformVersion', () async {
    AnnDynamicIcon dynamicIconPlugin = AnnDynamicIcon();
    MockDynamicIconPlatform fakePlatform = MockDynamicIconPlatform();
    AnnDynamicIconPlatform.instance = fakePlatform;
  
    expect(await dynamicIconPlugin.getPlatformVersion(), '42');
  });
}
