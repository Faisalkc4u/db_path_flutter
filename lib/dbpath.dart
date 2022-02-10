import 'dart:async';

import 'package:flutter/services.dart';

const MethodChannel _channel = const MethodChannel('dbpath');

Future<String> getDataBasePath() async {
  final String path = await _channel.invokeMethod('getDataBasePath');
  return path;
}
