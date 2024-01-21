import 'dart:io';

class User {
  String username;
  String password;

  User(this.username, this.password);
}

class UserOnBoarding {
  List<User> userList = [new User('Soban', '123'), new User('suboor', '123')];

  User? signUp() {
    stdout.write('Enter username: ');
    String username = stdin.readLineSync()!;

    // Check if the username already exists
    if (userList.any((user) => user.username == username)) {
      print('Username already exists. Please choose another one.');
      return null;
    }

    stdout.write('Enter password: ');
    String password = stdin.readLineSync()!;

    // Create a new user and add it to the list
    User newUser = User(username, password);
    userList.add(newUser);

    print('Sign-up successful!');
    return newUser;
  }

  User? signIn() {
    stdout.write('Enter username: ');
    String username = stdin.readLineSync()!;

    stdout.write('Enter password: ');
    String password = stdin.readLineSync()!;

    // Check if the user with given credentials exists
    User? foundUser = null;
    userList.forEach((user) {
      if (user.username == username && user.password == password) {
        foundUser = user;
        return null;
      }
    });

    if (foundUser != null) {
      print('Sign-in successful! Welcome, ${foundUser?.username}!');
      return foundUser;
    } else {
      print('Invalid username or password. Please try again.');
      return null;
    }
  }

  User? initiateUserOnBoarding() {
    stdout.write('Choose an option (1: Sign Up, 2: Sign In, 3: Exit): ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        signUp();
        print("Sign in now please");
        return signIn();

      case '2':
        return signIn();
      case '3':
        exit(0);
        break;
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}
