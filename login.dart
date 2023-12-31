import 'dart:io';

void main() {
  var user = [
    {'email': "soban", 'password': "1234"},
    {'email': 'saboor', 'password': '4321'},
    {'email': 'talha', 'password': '12345'}
  ];
  var login = false;

  while (!login) {
    stdout.writeln('Enter email');
    var email = stdin.readLineSync()!;
    stdout.writeln('Enter password');
    var pass = stdin.readLineSync()!;

    for (var i = 0; i < user.length; i++) {
      if (email == user[i]['email'] && pass == user[i]['password']) {
        print('Login succesfull');

        login = true;
      }
    }
    if (login == false){
      print('Invalid credentials.please try again');
    }
  }
}
