import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);
  List numbers = List.filled(n, null, growable: false);

  //filling array with numbers
  for(int i=0; i<n; i++){
    int num = int.parse(stdin.readLineSync()!);
    numbers[i] = num;
  }

  //finding a number without a pair
  for(int i=0; i<n; i++){
    int num = numbers[i];
    for(int j=i+1; j<n; j++){
      if(num == numbers[j]){
        print(num);
        break;
      }
    }
  }
}
