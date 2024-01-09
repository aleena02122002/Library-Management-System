import 'dart:io';

void main() {
  bool success = loggedin();
  if (success) {
    print("");
    print("Welcome to the application");
  } else {
    print("Try again");
  }
}

// loggin
bool loggedin() {
  while (true) {
    stdout.write("Email: ");
    String? userEmail = stdin.readLineSync();

    stdout.write("Password: ");
    String? userPassword = stdin.readLineSync();

    String emailPattern = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";
    int tryCount = 0;

    if ((RegExp(emailPattern).hasMatch(userEmail!) &&
        userPassword != null &&
        userPassword.isNotEmpty)) {
      print("");
      print("Successfully logged in");
      break;
    } else {
      print("Try again");
      tryCount++;
    }
  }
  return true;
}

// Home page

bool homePage() {
  String books, reservation;

  stdout.write("Welcome to Virtual library");

  return true;
}
