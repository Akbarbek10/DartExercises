import 'dart:io';
import "dart:math";

void main(List<String> arguments) {
  num number = int.parse(stdin.readLineSync()!);
  Map numbers = {
    1: "bir",
    2: "ikki",
    3: "uch",
    4: "to’rt",
    5: "besh",
    6: "olti",
    7: "yetti",
    8: "sakkiz",
    9: "to’qqiz",
    10: "o’n",
    20: "yigirma",
    30: "o’ttiz",
    40: "qirq",
    50: "ellik",
    60: "oltmish",
    70: "yetmish",
    80: "sakson",
    90: "to’qson",
  };
  Map endNumber = {
    1: "",
    2: "ming ",
    3: "million ",
    4: "milliard ",
    5: "trillion "
  };

  String finalResult = "";
  int k = 0;
  while (number > 0) {
    String result = "";
    num lastThreeNums = number % 1000;
    k++;

    while (lastThreeNums > 0) {
      int len = lastThreeNums.toString().length;

      if (len == 3) {
        var n = lastThreeNums ~/ pow(10, 2);
        result += "${numbers[n]} yuz ";
      } else if (len == 2) {
        var n = lastThreeNums ~/ 10;
        result += "${numbers[n * 10]} ";
      } else if (len == 1) {
        result += "${numbers[lastThreeNums]} ";
      }

      lastThreeNums %= pow(10, len - 1);
      if (lastThreeNums == 0) {
        result = result + endNumber[k];
      }
    }
    finalResult = result + finalResult;

    number = number ~/ 1000;
  }

  print(finalResult);
}
