void main(List<String> args) {
  //exercise 1
  //attendance is worth 20% of the grade
  //homework is worth 30% of the grade
  //exam is worth 50% of the grade

  Object? grade = 90 * 0.2 + 80 * 0.3 + 94 * 0.5;
  var gradeDouble = grade as double;
  int gradeInt = gradeDouble.floor().toInt();
  print(gradeInt); //round down

  //exercise 2

  const value = 10 / 2;
  print(value);
}
