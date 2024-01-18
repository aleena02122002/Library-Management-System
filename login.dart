import 'dart:io';
import 'signup.dart';

void main() {
  user();
}

bool user() {
  String emailPattern = "[a-zA-Z0-9._-]+@[a-z]+\\.+[a-z]+";
  int tryCount = 0;

  if (signup()) {
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
        break;
      } else {
        print("Invalid");
        tryCount++;
      }
    }
  } else {
    print("You didn't recieve anything");
  }

  return true;
}
