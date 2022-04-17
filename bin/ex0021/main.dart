import 'dart:io';

void main(List<String> arguments) {
  int class_one = int.parse(stdin.readLineSync()!);
  int class_two = int.parse(stdin.readLineSync()!);
  int class_three = int.parse(stdin.readLineSync()!);

  int total_num = class_one+class_two+class_three;
  int desks_required = 0;
  if(total_num%2==0){
    desks_required = total_num~/2;
  }else{
    desks_required = (total_num+1)~/2;
  }

  print(desks_required);
}


