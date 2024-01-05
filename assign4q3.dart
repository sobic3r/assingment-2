import 'dart:io';

void main() {
// Q3.Implement a code that checks
// whether a given number is prime or not.

// Example:

// Input:
// 17

// Output:
// 17 is a prime number.

  stdout.writeln('Enter a number');
  int number = int.parse(stdin.readLineSync()!);
  if (number < 2) {
    print('not a prime number');
    return;
  }

  for (var i = 2; i < number; i++) {
    if (number % i == 0) {
      print('$number is not a prime number');
      return;
    }
  }

  print("$number is a prime number");
  return;
}
