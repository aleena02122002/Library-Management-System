import 'login.dart';
import 'userAccount.dart';

String? answers;
bool setting() {
  print("");
  print("Account Details     ||     Sign Out     ");
  print("");

  if (answers?.toLowerCase() == "account") {
    userAccount();
  }
  return true;
}

bool signOut() {
  login();
  return true;
}
