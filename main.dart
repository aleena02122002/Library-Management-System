import 'dart:io';

void main() {
  bool success = loggedin();
  if (success) {
    print("");
    print(books());
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
  List<Map<String, String>> crimeNovels = [
    {"Agatha Christie": "Death on the Nile"},
    {"Agatha Christie": "The Murder of Roger Ackroyd"}
  ];
  List<Map<String, String>> entrepreneurship = [
    {"Eric Ries": "The Lean Startup"},
    {"Alexander Osterwalder": "Business Model Generation"}
  ];
  List<Map<String, String>> mathematics = [
    {"Denis Guedj": "The Parrot's Theorem"},
    {"David Berlinski": "A Tour of the Calculus"}
  ];
  List<Map<String, String>> englishNovel = [
    {"Jane Austen": "Pride and Prejudice"},
    {"J.K. Rowling": "Harry Potter and the Sorcerer’s Stone"}
  ];

  String? getName = stdin.readLineSync();
  if (getName == crimeNovels) {
    print(crimeNovels);
  }
  return true;
}
