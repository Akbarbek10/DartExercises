import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  var num = pow(2, a);
  var result = pow(2, num)%b;
  print(result);
}