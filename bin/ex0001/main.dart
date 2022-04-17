import 'dart:io';

void main(List<String> arguments) {
  String line = stdin.readLineSync()!;
  var mArray = line.split(" ");
  int a = int.parse(mArray[0]);
  int b = int.parse(mArray[1]);
  print(a+b);
}
