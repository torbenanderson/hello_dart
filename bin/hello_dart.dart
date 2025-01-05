import 'dart:math';

void main() {
  const double a = 10;
  const double b = 200;
  const double c = 30;

  final double discriminant = pow(b, 2) - 4 * a * c;

  if (discriminant >= 0) {
    final double root1 = (-b + sqrt(discriminant)) / (2 * a);
    final double root2 = (-b - sqrt(discriminant)) / (2 * a);

    print(root1);
    print(root2);
  } else {
    print("The equation has no real roots.");
  }
}
