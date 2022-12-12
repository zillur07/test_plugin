import 'package:flutter/services.dart';

class TestPlugin {
  final methodChannel = const MethodChannel('test_plugin');

  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
