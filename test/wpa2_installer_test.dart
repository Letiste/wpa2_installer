import 'package:flutter_test/flutter_test.dart';
import 'package:wpa2_installer/wpa2_installer.dart';
import 'package:wpa2_installer/wpa2_installer_platform_interface.dart';
import 'package:wpa2_installer/wpa2_installer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWpa2InstallerPlatform 
    with MockPlatformInterfaceMixin
    implements Wpa2InstallerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final Wpa2InstallerPlatform initialPlatform = Wpa2InstallerPlatform.instance;

  test('$MethodChannelWpa2Installer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWpa2Installer>());
  });

  test('getPlatformVersion', () async {
    Wpa2Installer wpa2InstallerPlugin = Wpa2Installer();
    MockWpa2InstallerPlatform fakePlatform = MockWpa2InstallerPlatform();
    Wpa2InstallerPlatform.instance = fakePlatform;
  
    expect(await wpa2InstallerPlugin.getPlatformVersion(), '42');
  });
}
