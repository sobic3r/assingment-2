void main() {
  // Q4.Implement a code that finds the
// largest element in a list using a for loop.

  List number = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  var largestelement = number[0];

  for (var i = 0; i < number.length; i++) {
    if (number[i] > largestelement) {
      largestelement = number[i];
    }
  }
  print("largest element is $largestelement");
}
