import 'dart:io';

void main(List<String> arguments) {
  String line = stdin.readLineSync()!;
  var numbers = line.split(" ");
  int min = int.parse(numbers[0]);
  int max = int.parse(numbers[0]);

  for (int i = 0; i < numbers.length; i++) {
    int num = int.parse(numbers[i]);
    if(num<min){
      min = num;
    }else if(num>max){
      max = num;
    }
  }

  print("$min $max");
}
