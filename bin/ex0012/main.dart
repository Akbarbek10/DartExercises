import 'dart:io';

void main(List<String> arguments) {
  int n = int.parse(stdin.readLineSync()!);
  bool player = true; //true -> Ali , false -> Bobur
  List<int> numbers = [];
  for (int i = 1; i <= n; i++) {
    numbers.add(i);
  }

  bool gameStop = true;

  while (gameStop) {
    player = !player;

    int? primeNum;
    for (int num in numbers) {
      if (isPrimeNum(num)) {
        primeNum = num;
        break;
      }
    }

    if (primeNum != null) {
      //deleting any prime number
      var newNumbers = [...numbers];
      for (int num in numbers) {
        if (num % primeNum == 0) {
          newNumbers.remove(num);
        }
      }
      numbers = [...newNumbers];
    } else {
      String winner = player == true ? "Ali" : "Bobur";
      print(winner);
      gameStop = false;
    }
  }
}

bool isPrimeNum(int num) {
  if (num < 2) {
    return false;
  }

  int k = 0;
  for (int i = 1; i <= num / 2; i++) {
    if (num % i == 0) {
      k++;
    }
    if (k > 1) {
      return false;
    }
  }

  return true;
}
