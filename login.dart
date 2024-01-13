import 'dart:io';

void main() {
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
}
