import 'dart:io';

void main(List<String> arguments) {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c;

  c = a;
  a = b;
  b = c;

  print("$a $b");
}