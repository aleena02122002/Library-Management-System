import 'dart:io';

String? email, phone, name, password;
bool signup() {
  stdout.write("Enter Your Full Name: ");
  name = stdin.readLineSync();

  stdout.write("Enter Your Phone Number: ");
  phone = stdin.readLineSync();

  stdout.write("Enter Your Email: ");
  email = stdin.readLineSync();

  stdout.write("Enter Password: ");
  password = stdin.readLineSync();

  return true;
}
