import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wpa2_installer/wpa2_installer_method_channel.dart';

void main() {
  MethodChannelWpa2Installer platform = MethodChannelWpa2Installer();
  const MethodChannel channel = MethodChannel('wpa2_installer');

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
