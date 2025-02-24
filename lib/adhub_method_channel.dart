import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'adhub_platform_interface.dart';

/// An implementation of [AdhubPlatform] that uses method channels.
class MethodChannelAdhub extends AdhubPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('adhub');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
