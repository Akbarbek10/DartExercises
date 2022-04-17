import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);
  List a = List.filled(n, null, growable: false);

  for (int i = 0; i < n; i++) {
    int num = int.parse(stdin.readLineSync()!);
    a[i] = num;
  }

  int pairs = 0;
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (i < j && a[i] > 2 * a[j]) {
        pairs++;
      }
    }
  }

  print(pairs);
}

