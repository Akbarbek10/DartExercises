import 'dart:io';

void main(List<String> arguments) {
  int number = int.parse(stdin.readLineSync()!);
  int firstDigit = number ~/ 10;
  
  print(firstDigit);
}
