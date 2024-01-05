void main(){
  //   Q7. Write a program that takes a list
// of numbers as input and prints the numbers greater than 5 using a for loop and
// if-else condition.

  List input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  for (var i = 0; i < input.length; i++) {
    if (input[i] > 5) {
      print(input[i]);

    }

  }
}