import 'dart:math';

/// Solves a quadratic equation ax² + bx + c = 0.
/// Returns the discriminant of the equation.
/// Prints the roots (real or complex) to the console.
///
/// Parameters:
/// - [a] coefficient of x²
/// - [b] coefficient of x
/// - [c] constant term
///
/// Returns:
/// - The discriminant (b² - 4ac)
/// - double.infinity for infinite solutions
/// - double.nan for no solutions

double solveQuadratic(double a, double b, double c) {
  // Check if a is zero (linear equation case)
  if (a == 0) {
    if (b == 0) {
      if (c == 0) {
        print("The equation has infinitely many solutions.");
        return double.infinity; // Represent infinite solutions
      } else {
        print("The equation has no solutions!");
        return double.nan; // Represent no solution
      }
    } else {
      // Linear equation: bx + c = 0
      final double root = -c / b;
      print("The equation is linear with root: $root");
      return root;
    }
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

  return discriminant; // Or return any relevant value you want to expose
}
