import 'dart:io';
import 'login.dart';

void main() {
  if (user()) {
    books();
  } else {
    print("Unaccessable");
  }
}
// Home page

bool books() {
  List<String> crimeNovels = ["Cave and Shadows", "A Time to Kill"];
  List<String> entrepreneurship = [];
  List<String> mathematics = [];
  List<String> englishNovel = [];

  stdout.write("Do you want to add or remove a book?");
  String? answer = stdin.readLineSync();
  if (answer?.toLowerCase() == "add") {
    stdout.write("Enter Category: ");
    String? listName = stdin.readLineSync();

    switch (listName?.toLowerCase().trim()) {
      case 'crime novels':
        stdout.write("Enter book name: ");
        String? bookName = stdin.readLineSync()!.trim();
        crimeNovels.add(bookName);
        print(crimeNovels);
        break;
      case 'entrepreneurship':
        stdout.write("Enter book name: ");
        String? bookName = stdin.readLineSync()!.trim();
        entrepreneurship.add(bookName);
        print(entrepreneurship);
        break;
      case 'mathematics':
        stdout.write("Enter book name: ");
        String? bookName = stdin.readLineSync()!.trim();
        mathematics.add(bookName);
        print(mathematics);
        break;
      case 'english novels':
        stdout.write("Enter book name: ");
        String? bookName = stdin.readLineSync()!.trim();
        englishNovel.add(bookName);
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
