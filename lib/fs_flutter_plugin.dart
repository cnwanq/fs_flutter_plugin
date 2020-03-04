import 'dart:async';

import 'package:flutter/services.dart';

class FsFlutterPlugin {
  static const MethodChannel _channel =
      const MethodChannel('fs_flutter_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
