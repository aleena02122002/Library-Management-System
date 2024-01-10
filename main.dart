import 'dart:io';

void main() {
  bool success = loggedin();
  if (success) {
    print("");
    print("Welcome to the application");
    books();
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

bool books() {
  List<String> crimeNovels = [];
  List<String> entrepreneurship = [];
  List<String> mathematics = [];
  List<String> englishNovel = [];

  stdout.write("Do you want to make changes in list?");
  String? answer = stdin.readLineSync();
  if (answer?.toLowerCase() == "yes") {
    stdout.write("Enter Category: ");
    String? listName = stdin.readLineSync();

    switch (listName?.toLowerCase()) {
      case 'crime novels':
        stdout.write("Enter book name: ");
        String? bookName = stdin.readLineSync()!;
        crimeNovels.add(bookName);
        break;
      case 'Entrepreneurship':
        print(entrepreneurship);
        break;
      case 'Mathematics':
        print(mathematics);
        break;
      case 'English Novels':
        print(englishNovel);
        break;
      default:
        print("Category not found");
    }
  } else {
    print("Okay");
  }
  return true;
}
