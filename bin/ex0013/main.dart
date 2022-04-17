import 'dart:io';

void main(List<String> arguments) {
  int N = int.parse(stdin.readLineSync()!); //days
  int K = int.parse(stdin.readLineSync()!); //meetings

  int infectedNum = 1;
  while(N>0){
    if(infectedNum<K){
      infectedNum += infectedNum*K;
      break;
    }
    N--;
  }

  print(infectedNum);

}
