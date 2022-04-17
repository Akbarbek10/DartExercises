import 'dart:io';

void main(List<String> arguments) {
  String line1 = stdin.readLineSync()!;
  String line2 = stdin.readLineSync()!;

  var time1 = line1.split(" ");
  var time2 = line2.split(" ");

  int totalSecondsDifference = 0;

  for (int i = 0; i < time1.length; i++) {
    int specificTime1 = int.parse(time1[i]);
    int specificTime2 = int.parse(time2[i]);

    if(i==0){
      totalSecondsDifference += (specificTime2-specificTime1)*3600;
    }else if(i==1){
      totalSecondsDifference += (specificTime2-specificTime1)*60;
    }else{
      totalSecondsDifference += specificTime2-specificTime1;
    }
  }

  print(totalSecondsDifference);
}
