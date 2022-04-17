import 'dart:io';

void main(List<String> arguments) {
  int N = int.parse(stdin.readLineSync()!);
  String line = stdin.readLineSync()!;
  var mArray = line.split(" ");
  int sum = 0;
  for (var element in mArray) {
    sum += int.parse(element);
  }

  if(sum>=N){
    print("Yes");
  }else{
    print("No");
  }
}
