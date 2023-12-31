import 'dart:io';

void main() {
  stdout.writeln("Enter a number");
  int table = int.parse(stdin.readLineSync()!);

  for (var i = 1; i <= 10; i++) {
    print('$table x $i = ${i * table}');
  }
}
