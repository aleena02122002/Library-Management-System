import 'dart:io';
import 'main.dart';
import 'signup.dart';

bool user() {
  if (signup()) {
    login();
  } else {
    print("You didn't recieve anything");
  }

  return true;
}

bool login() {
  String emailPattern = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";
  int tryCount = 0;

  print("");
  print('"LOGIN ACCOUNT!"');
  print("");
  while (true) {
    stdout.write("Email: ");
    String? userEmail = stdin.readLineSync();

    stdout.write("Password: ");
    String? userPassword = stdin.readLineSync();

    if ((RegExp(emailPattern).hasMatch(userEmail!) &&
        userPassword == password &&
        userEmail == email &&
        userPassword != null &&
        userPassword.isNotEmpty)) {
      print("");
      print("Successfully logged in");
      print("");
      break;
    } else {
      print("Invalid");
      tryCount++;
    }
  }
  return true;
}
