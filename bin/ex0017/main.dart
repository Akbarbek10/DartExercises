import 'dart:io';
import "dart:math";

void main(List<String> arguments) {
  int number = int.parse(stdin.readLineSync()!);
  int counter = 0;
  int unusualNum = 0;
  int k = 0;

  while (counter != number) {
    k++;
    if(isUnusualNum(k)){
      unusualNum = k;
      counter++;
    }
  }

  print(unusualNum);
}

bool isUnusualNum(int number) {
  int digitsSum = 0;
  int tempNumber = number;
  while (tempNumber > 0) {
    digitsSum += tempNumber % 10;
    tempNumber ~/= 10;
  }

  num digitsSumSquared = pow(digitsSum, 2);
  if (number % digitsSumSquared == 0) {
    return true;
  }

  return false;
}
