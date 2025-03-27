// test/age_tdd_test.dart
import 'package:test/test.dart';
import 'package:hello_dart/age.dart'
    show
        calculateAges, minAge, maxAge; // Import the function and constants

/// This test demonstrates Test-Driven Development practices
void main() {
  /// Define test data once as constants
  const validAge1 = 42;
  const validAge2 = 21;
  const expectedSum = validAge1 + validAge2;
  const expectedAverage = expectedSum / 2;
  
  group('calculateAges function', () {
    // Test valid cases
    test('calculates sum and average of two ages correctly', () {
      final result = calculateAges(validAge1, validAge2);
      expect(result.sum, equals(expectedSum), reason: 'Sum should be $expectedSum');
      expect(result.average, equals(expectedAverage), reason: 'Average should be $expectedAverage');
    });

    // Test boundary cases
    test('accepts ages at minimum boundary', () {
      final result = calculateAges(minAge, minAge);
      expect(result.sum, equals(minAge * 2));
      expect(result.average, equals(minAge.toDouble()));
    });

    test('accepts ages at maximum boundary', () {
      final result = calculateAges(maxAge, maxAge);
      expect(result.sum, equals(maxAge * 2));
      expect(result.average, equals(maxAge.toDouble()));
    });

    // Test error cases
    test('rejects ages below minimum', () {
      expect(() => calculateAges(minAge - 1, 20), throwsArgumentError);
      expect(() => calculateAges(20, minAge - 1), throwsArgumentError);
    });

    test('rejects ages above maximum', () {
      expect(() => calculateAges(maxAge + 1, 20), throwsArgumentError);
      expect(() => calculateAges(20, maxAge + 1), throwsArgumentError);
    });
  });
}
