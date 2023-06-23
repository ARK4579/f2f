import 'package:f2f/f2f.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = SureAwesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });

    test('Second Test', () {
      expect(awesome.areSureAboutAwesome, isTrue);
    });
  });
}
