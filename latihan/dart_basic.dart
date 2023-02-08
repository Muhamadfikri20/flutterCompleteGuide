class Person {
  String name = 'Max';
  int age = 30;
}

double addNumbers(double num1, double num2) {
// use num as a type because it should work with int and double
  return num1 + num2;
}

void main() {
  var p1 = Person();
  var p2 = Person();
  p2.name = 'Manu';
  print(p1.name);
  print(p2.name);
  double firstResult = addNumbers(1, 1);
  print(firstResult + 1);

  print(addNumbers(1, 2.6));
  print('Hello!');
}
//run terminal : dart dartbasic.dart
