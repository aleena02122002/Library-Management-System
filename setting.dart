import 'dart:io';
import 'login.dart';
import 'userAccount.dart';

String? answers;
bool settings() {
  print("");
  print("Account Details     ||     Sign Out     ");
  print("");

  stdout.write("Enter Option: ");
  answers = stdin.readLineSync();
  if (answers?.toLowerCase() == "account") {
    userAccount();
  } else if (answers?.toLowerCase() == "sign out") {
    login();
  } else {
    print("can't access");
  }
  return true;
}
