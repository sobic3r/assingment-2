import 'dart:io';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

void main() {
  print("Prime numbers between 1 and 100:");
  
  for (int i = 2; i <= 100; i++) {
    if (isPrime(i)) {
      print(i);
    }
  }

}
