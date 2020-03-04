import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fs_flutter_plugin/fs_flutter_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('fs_flutter_plugin');

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FsFlutterPlugin.platformVersion, '42');
  });
}
