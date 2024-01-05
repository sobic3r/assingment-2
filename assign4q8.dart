import 'dart:io';

void main(){
  // Q8.  Write a program that counts the
// number of vowels in a given string using a for loop and if-else condition

  stdout.writeln("Enter a string");
  String name = stdin.readLineSync()!;
  name = name.toLowerCase();
  // String vowels ='a''e''i''o''u';
  var count = 0;

  for (var i = 0; i < name.length; i++) {
    //  if (name[i] == vowels[i] ){

    if (name[i] == 'a' ||
        name[i] == 'e' ||
        name[i] == 'i' ||
        name[i] == 'o' ||
        name[i] == 'u') {
      count++;
    }
  }
  print('Number of vowels are $count');
}