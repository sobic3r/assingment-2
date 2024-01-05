void main(){
  //   Q9. Implement a code that finds the
// maximum and minimum elements in a list using a for loop and if-else condition.

  List number = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  var maxelement = number[0];
  var minelement = number[0];

  for (var i = 0; i < number.length; i++) {
    if (number[i] > maxelement) {
      maxelement = number[i];}
      if (number[i] < minelement) {
        minelement = number[i];
      }
    }

  print("Maximum element is $maxelement");
  print("Minimum element is $minelement");
}