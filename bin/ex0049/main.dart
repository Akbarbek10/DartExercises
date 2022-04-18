import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);
  if (isTriangular(n)) {
    print(1);
  } else {
    print(0);
  }
}

bool isTriangular(int num) {
  if (num < 0) {
    return false;
  }

  int sum = 0;
  for (int n = 1; sum <= num; n++) {
    sum = sum + n;
    if (sum == num) {
      return true;
    }
  }

  return false;
}
