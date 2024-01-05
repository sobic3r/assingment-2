import 'dart:io';

void main() {
//   Q5. Implement a function that checks if a given string is a
// palindrome.

// Example:

// Input:
// "radar"

// Output:
// "radar" is a palindrome.

  stdout.writeln("Enter a word");
  var pal = stdin.readLineSync()!;
  var strt = 0;
  var end = pal.length - 1;

  while (strt != end) {
    if (pal[strt] != pal[end]) {
      print('$pal is not a palindrome');
      break;
    }
    strt++;
    end--;
  }
  if (strt == end) print("$pal is a palindrome");
}
