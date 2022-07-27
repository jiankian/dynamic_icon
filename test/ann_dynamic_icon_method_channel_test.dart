import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ann_dynamic_icon/ann_dynamic_icon_method_channel.dart';

void main() {
  MethodChannelDynamicIcon platform = MethodChannelDynamicIcon();
  const MethodChannel channel = MethodChannel('ann_dynamic_icon');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
