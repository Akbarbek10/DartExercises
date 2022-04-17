import 'dart:io';
import "dart:math";

void main(List<String> arguments) {
  int N = int.parse(stdin.readLineSync()!);
  int K = int.parse(stdin.readLineSync()!);

  int num = K ~/ N;
  print(num);

}

