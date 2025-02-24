
import 'adhub_platform_interface.dart';

class Adhub {
  Future<String?> getPlatformVersion() {
    return AdhubPlatform.instance.getPlatformVersion();
  }
}
