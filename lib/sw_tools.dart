import 'dart:async';

import 'package:flutter/services.dart';

class SwTools {
  static const MethodChannel _channel = const MethodChannel('sw_tools');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<bool> packageIsInstall(String package) {
    return _channel.invokeMethod("packageIsInstall", {"package": package});
  }
}
