import 'dart:io';

void main() {
  List input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (var i = 0; i < 10; i++) {
    if (input[i] % 2 == 0) {
      print(input[i]);
    }
  }
}
