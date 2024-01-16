import 'dart:html_common';
import 'dart:io';
import 'login.dart';

//categories
List<String> crimeNovels = ["Cave and Shadows", "A Time to Kill"];
List<String> entrepreneurship = ["Zero to One", "Business Model Generation"];
List<String> mathematics = ["Treatise on Light", "Algebra"];
List<String> englishNovel = [
  "Harry Potter and the Chamber of Secrets",
  "The Picture of Dorian Gray"
];

String? listName;
void main() {
  if (user()) {
    stdout.write("Do you want to add or remove a book?");
    String? answer = stdin.readLineSync();

    if (answer?.toLowerCase() == "add") {
      add();
    } else if (answer?.toLowerCase() == "remove") {
      remove();
    }
  } else {
    print("Couldn't access");
  }
}
// Add methode

bool add() {
  stdout.write("Enter category name: ");
  listName = stdin.readLineSync();
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
  return true;
}

// remove method
bool remove() {
  stdout.write("Enter category name: ");
  listName = stdin.readLineSync();
  switch (listName?.toLowerCase().trim()) {
    case 'crime novels':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      crimeNovels.remove(bookName);
      print(crimeNovels);
      break;
    case 'entrepreneurship':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      entrepreneurship.remove(bookName);
      print(entrepreneurship);
      break;
    case 'mathematics':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      mathematics.remove(bookName);
      print(mathematics);
      break;
    case 'english novels':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      englishNovel.remove(bookName);
      print(englishNovel);
      break;
    case 'science':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      englishNovel.remove(bookName);
      print("");
      break;
    default:
      print("Category not found");
  }
  return true;
}

List<String> addCategory() {
  stdout.write("Enter list name: ");
  String? listName = stdin.readLineSync()!;
  List<String> newList = [];

  newList.add(listName);

  return newList;
}
