import 'dart:io';

void main(List<String> arguments) {
  int year = int.parse(stdin.readLineSync()!);
  bool isLeapYear = checkLeapYear(year);

  if(isLeapYear){
    print("Kabisa yili");
  }else{
    print("Kabisa yili emas");
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
