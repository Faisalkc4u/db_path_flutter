import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dbpath/dbpath.dart';

void main() {
  const MethodChannel channel = MethodChannel('dbpath');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return 'path/db';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getDataBasePath', () async {
    expect(await getDataBasePath(), isNotNull  );
  });
}
