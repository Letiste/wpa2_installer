import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'wpa2_installer_method_channel.dart';

abstract class Wpa2InstallerPlatform extends PlatformInterface {
  /// Constructs a Wpa2InstallerPlatform.
  Wpa2InstallerPlatform() : super(token: _token);

  static final Object _token = Object();

  static Wpa2InstallerPlatform _instance = MethodChannelWpa2Installer();

  /// The default instance of [Wpa2InstallerPlatform] to use.
  ///
  /// Defaults to [MethodChannelWpa2Installer].
  static Wpa2InstallerPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [Wpa2InstallerPlatform] when
  /// they register themselves.
  static set instance(Wpa2InstallerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
