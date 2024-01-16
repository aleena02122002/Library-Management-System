import 'dart:io';
import 'login.dart';

List<String> crimeNovels = ["Cave and Shadows", "A Time to Kill"];
List<String> entrepreneurship = [];
List<String> mathematics = [];
List<String> englishNovel = [];

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
    default:
      print("Category not found");
  }
  return true;
}
