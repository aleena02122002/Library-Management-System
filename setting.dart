import 'login.dart';
import 'userAccount.dart';

String? answers;
bool settings() {
  print("");
  print("Account Details     ||     Sign Out     ");
  print("");

  if (answers?.toLowerCase() == "account") {
    userAccount();
  } else {
    print("can't access");
  }
  return true;
}

// bool signOut() {
//   login();
//   return true;
// }
