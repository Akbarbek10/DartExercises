import 'dart:io';

void main(List<String> arguments) {
  int totalSeconds = int.parse(stdin.readLineSync()!);
  int secondsInDay = 86400;

  totalSeconds %= secondsInDay;

  int hours = totalSeconds ~/ 3600;
  int minutes = (totalSeconds % 3600) ~/ 60;
  int seconds = totalSeconds - (hours * 3600 + minutes * 60);

  String hoursFormat = hours < 9 ? "0$hours" : "$hours";
  String minutesFormat = minutes < 9 ? "0$minutes" : "$minutes";
  String secondsFormat = seconds < 9 ? "0$seconds" : "$seconds";

  print("$hoursFormat:$minutesFormat:$secondsFormat");
}
