
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterQuitter {
  static const MethodChannel _channel =
      const MethodChannel('com.bleuxstrife/flutter_quitter');

  static Future<void> quitApplication() async {
    await _channel.invokeMethod('quitApplication');
  }
}
