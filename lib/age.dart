// lib/age.dart
({int sum, double average}) calculateAges(int age1, int age2) {
  if (age1 < 0 || age2 < 0) {
    print('Ages cannot be negative');
    throw ArgumentError('Ages cannot be negative');
  }
  final sum = age1 + age2;
  final average = sum / 2;
  print('Sum: $sum');
  print('Average: $average');
  return (sum: sum, average: average);
}

void main() {
  calculateAges(42, 21); // For running as a script
}
