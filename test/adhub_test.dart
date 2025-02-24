import 'package:flutter_test/flutter_test.dart';
import 'package:adhub/adhub.dart';
import 'package:adhub/adhub_platform_interface.dart';
import 'package:adhub/adhub_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockAdhubPlatform
    with MockPlatformInterfaceMixin
    implements AdhubPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final AdhubPlatform initialPlatform = AdhubPlatform.instance;

  test('$MethodChannelAdhub is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelAdhub>());
  });

  test('getPlatformVersion', () async {
    Adhub adhubPlugin = Adhub();
    MockAdhubPlatform fakePlatform = MockAdhubPlatform();
    AdhubPlatform.instance = fakePlatform;

    expect(await adhubPlugin.getPlatformVersion(), '42');
  });
}
