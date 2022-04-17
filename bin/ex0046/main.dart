import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);

  int counter = 0;

  var previousArr = [];
  for (int i = 1; i <= n; i++) {
    var currentArr = [];
    for (int j = 0; j <= i; j++) {
      if (j == 0 || j == i) {
        currentArr.add(1);
      } else {
        currentArr.add(previousArr[j - 1] + previousArr[j]);
      }

      if(currentArr[j]%2==0){
        counter++;
      }

      // stdout.write(currentArr[j].toString() + " ");
    }
    previousArr = [...currentArr];
    // print("");
  }

  print(counter);
}
