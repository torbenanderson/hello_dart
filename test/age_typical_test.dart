import 'package:test/test.dart';

void main() {
  test('age calculations', () {
    const age1 = 42;
    const age2 = 21;

    // Test sum
    expect(age1 + age2, equals(63));

    // Test average
    expect((age1 + age2) / 2, equals(31.5));
  });
}
