import 'dart:io';
import 'dart:math';

void main() {
//  Q:1 Write a program that takes a list
// of numbers as input and prints the even numbers in the list using a for loop.

// Example:

// Input:
// [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

// Output:
// 2 4 6 8 10

  List input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (var i = 0; i < 10; i++) {
    if (input[i] % 2 == 0) {
      print(input[i]);
    }
  }
}
