import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);

  int k = 1;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write("$k ");
      k++;
    }
    print("");
  }
}
