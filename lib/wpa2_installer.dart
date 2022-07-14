
import 'wpa2_installer_platform_interface.dart';

class Wpa2Installer {
  Future<String?> getPlatformVersion() {
    return Wpa2InstallerPlatform.instance.getPlatformVersion();
  }
}
