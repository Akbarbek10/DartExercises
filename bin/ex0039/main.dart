import 'dart:io';

void main(List<String> arguments) {
  int phoneNum = int.parse(stdin.readLineSync()!);

  int subtractor = phoneNum;
  while (subtractor > 0) {
    int homeNum = phoneNum - subtractor;
    if (homeNum % 100 == subtractor) {
      print(homeNum);
    }
    subtractor--;
  }
}
