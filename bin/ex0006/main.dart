import 'dart:io';

void main(List<String> arguments) {
  int year = int.parse(stdin.readLineSync()!);
  bool isLeapYear = checkLeapYear(year);

  if(isLeapYear){
    print("12/09/2000");
  }else{
    print("13/09/2000");
  }
}

bool checkLeapYear(int year) {
  if (year % 4 == 0 && year % 100 != 0) {
    return true;
  } else {
    if (year % 400 == 0) {
      return true;
    }
  }
  return false;
}
