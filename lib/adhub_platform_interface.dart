import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'adhub_method_channel.dart';

abstract class AdhubPlatform extends PlatformInterface {
  /// Constructs a AdhubPlatform.
  AdhubPlatform() : super(token: _token);

  static final Object _token = Object();

  static AdhubPlatform _instance = MethodChannelAdhub();

  /// The default instance of [AdhubPlatform] to use.
  ///
  /// Defaults to [MethodChannelAdhub].
  static AdhubPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [AdhubPlatform] when
  /// they register themselves.
  static set instance(AdhubPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
