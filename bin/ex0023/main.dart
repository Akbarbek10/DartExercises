import 'dart:io';

void main(List<String> arguments) {
  int number = int.parse(stdin.readLineSync()!);
  int lastDigit = number % 10;
  
  print(lastDigit);
}
