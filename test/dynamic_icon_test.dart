import 'package:flutter_test/flutter_test.dart';
import 'package:dynamic_icon/dynamic_icon.dart';
import 'package:dynamic_icon/dynamic_icon_platform_interface.dart';
import 'package:dynamic_icon/dynamic_icon_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDynamicIconPlatform 
    with MockPlatformInterfaceMixin
    implements DynamicIconPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DynamicIconPlatform initialPlatform = DynamicIconPlatform.instance;

  test('$MethodChannelDynamicIcon is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDynamicIcon>());
  });

  test('getPlatformVersion', () async {
    DynamicIcon dynamicIconPlugin = DynamicIcon();
    MockDynamicIconPlatform fakePlatform = MockDynamicIconPlatform();
    DynamicIconPlatform.instance = fakePlatform;
  
    expect(await dynamicIconPlugin.getPlatformVersion(), '42');
  });
}
