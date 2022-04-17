import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);
  List numbers = List.filled(n, null, growable: false);

  //filling array with numbers
  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers[i] = num;
  }

  int max = numbers[0];
  int secondMax = numbers[0];

  //finding a second largest element of the array
  for (int i = 1; i < n; i++) {
    int num = numbers[i];
    if (num > max) {
      secondMax = max;
      max = num;
    } else if (num > secondMax) {
      secondMax = num;
    }
  }

  print(secondMax);
}
