import 'dart:io';

void main() {
  // stdout.writeln("Enter a Number");
  // int Number = int.parse(stdin.readLineSync()!);

  // bool isPrime = (Number / 2 == 0 && Number % Number == 0 && Number % 2 != 0);
  // if (isPrime)
  //   print("$Number is a prime number ");
  // else {
  //   print("$Number is not a prime number");
  // }
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
