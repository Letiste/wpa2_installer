import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'wpa2_installer_platform_interface.dart';

/// An implementation of [Wpa2InstallerPlatform] that uses method channels.
class MethodChannelWpa2Installer extends Wpa2InstallerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('wpa2_installer');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
