// test/age_test.dart
import 'package:test/test.dart';
import 'package:hello_dart/age.dart'
    show calculateAges; // Import a function that doesn't exist yet

void main() {
  test('calculates sum and average of two ages', () {
    final result = calculateAges(42, 21);
    expect(result.sum, equals(63));
    expect(result.average, equals(31.5));
  });
  test('rejects negative ages', () {
    expect(() => calculateAges(-10, 20), throwsArgumentError);
  });
}
