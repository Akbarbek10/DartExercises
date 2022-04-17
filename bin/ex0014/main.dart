import 'dart:io';

void main(List<String> arguments) {
  int N = int.parse(stdin.readLineSync()!); //days
  int K = int.parse(stdin.readLineSync()!); //meetings

  int infectedNum = 1;
  while(N>0){
    infectedNum += infectedNum*K;
    N--;
  }

  print(infectedNum);

}
