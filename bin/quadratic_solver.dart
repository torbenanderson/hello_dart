/// This is a quadratic equation solver in Dart.
/// It takes three arguments: a, b, and c, which are the coefficients of the quadratic equation.
/// It then calculates the roots of the equation using the quadratic formula.
/// If the discriminant is positive, it prints two real roots.
/// If the discriminant is zero, it prints one repeated real root.
/// If the discriminant is negative, it prints two complex roots.

import 'dart:math';

void main() {
  const double a = 10;
  const double b = 20;
  const double c = 30;

  // Check if a is zero (linear equation case)
  if (a == 0) {
    if (b == 0) {
      if (c == 0) {
        print("The equation has infinitely many solutions.");
      } else {
        print("The equation has no solutions!");
      }
    } else {
      // Linear equation: bx + c = 0
      final double root = -c / b;
      print("The equation is linear with root: $root");
    }
    return;
  }

  final double discriminant = pow(b, 2) - 4 * a * c;

  if (discriminant > 0) {
    // Two distinct real roots
    final double root1 = (-b + sqrt(discriminant)) / (2 * a);
    final double root2 = (-b - sqrt(discriminant)) / (2 * a);
    print("Two real roots:");
    print("x₁ = $root1");
    print("x₂ = $root2");
  } else if (discriminant == 0) {
    // One repeated real root
    final double root = -b / (2 * a);
    print("One repeated real root:");
    print("x = $root");
  } else {
    // Complex roots
    final double realPart = -b / (2 * a);
    final double imaginaryPart = sqrt(-discriminant) / (2 * a);
    print("Two complex roots:");
    print("x₁ = $realPart + ${imaginaryPart}i");
    print("x₂ = $realPart - ${imaginaryPart}i");
  }
}
