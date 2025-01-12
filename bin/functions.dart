import 'dart:math';

String youAreWonderful({required String name, int numberPeople = 5}) {
  return 'You are wonderful, $name, $numberPeople people think so!';
}

double circleArea(double radius) {
  return radius * radius * pi;
}

double circleA(double radius) => radius * radius * pi;

bool isNumberDivisible(int number, int divisor) {
  return number % divisor == 0;
}

bool isPrime(int number) {
  for (int i = 2; i < number; i++) {
    if (isNumberDivisible(number, i)) {
      return false;
    }
  }
  return true;
}

String fullName(String firstName, String lastName, [String? title]) {
  if (title != null) {
    return '$title $firstName $lastName';
  } else {
    print(title);
    return '$firstName $lastName';
  }
}

void main() {
  print(youAreWonderful(name: 'Torben', numberPeople: 10));
  print(youAreWonderful(name: 'Torben'));
  print(circleArea(10));
  print(circleA(5));
  print(isNumberDivisible(10, 2));
  print(isPrime(12));
  print(isPrime(13));
  print(fullName('Torben', 'Hansen'));
  print(fullName('Torben', 'Hansen', 'Mr.'));
}
