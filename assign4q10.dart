void main(){
 //   Q10. Write a program that calculates the
// sum of the squares of all odd numbers in a given list using a for loop and
// if-else condition

  List numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  var sumofsqr = 0;

  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] % 2 != 0) {
      // print(numbers[i]);
      sumofsqr += i * i;

    }
  }
  print("Sum of Squares of all odd nums: $sumofsqr ");
}