import 'dart:io';

void main(List<String> arguments) {
  int z = int.parse(stdin.readLineSync()!);
  if(z == 0) {
    print(-1);
  }else{
    int counter = 0;
    z = z.abs();

    for (int y = -z; y <= z; y++) {
      for (int x = -z; x <= z; x++) {
        if (x * y == z && x <= y) {
          counter++;
        }
      }
    }
    print(counter);
  }
}
