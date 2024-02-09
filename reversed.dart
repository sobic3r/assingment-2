
import 'dart:io';

void main() {
  
  // var input = stdin.readLineSync()!;
  // var a = [];

  // for (var i = 0; i < input.length; i++) {
  //   a.add(input[i]);
  // }
  // var reversed = List.of(a.reversed);
  // // print(reversed);

  // reversed.forEach((element) {
  //   stdout.write(element);
  // });

  print("Enter a string:");
  String? input = stdin.readLineSync();
  String? reversed = input?.split('').reversed.join();
  print("Reversed string: $reversed");
}

