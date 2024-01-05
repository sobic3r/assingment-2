void main() {
  //Q2.Write a program that prints the
//Fibonacci sequence up to a given number using a for loop.

// Example:

// Input:
// 10

// Output:
// 0 1 1 2 3 5 8

  int s = 0, e = 1;

  print("$s \n$e");

  for (var i = 0; i < 10; i++) {
    var o = s + e;

    if (o <= 10) {
      print("$o");

      s = e;
      e = o;
    }
  }
}
