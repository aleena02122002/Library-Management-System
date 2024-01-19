import 'dart:io';
import 'login.dart';
import 'setting.dart';

//categories
List<String> crimeNovels = ["Cave and Shadows", "A Time to Kill"];
List<String> entrepreneurship = ["Zero to One", "Business Model Generation"];
List<String> mathematics = ["Treatise on Light", "Algebra"];
List<String> englishNovel = [
  "Harry Potter and the Chamber of Secrets",
  "The Picture of Dorian Gray"
];

String? listName, borrowBook, customerName, payment, phoneNumber, choice;
void main() {
  if (user()) {
    print("");
    print("Home Page     ||     Setting     ");
    print("");

    stdout.write("Please Choose One Option: ");
    choice = stdin.readLineSync();

    if (choice?.toLowerCase() == "home") {
      homePage();
    } else if (choice?.toLowerCase() == "setting") {
      setting();
    } else {
      print("error");
    }
  } else {
    print("Couldn't access");
  }
}

bool homePage() {
  stdout.write("Do you want to add or remove a book?");
  String? answer = stdin.readLineSync();

  if (answer?.toLowerCase() == "add") {
    add();
  } else if (answer?.toLowerCase() == "remove") {
    remove();
  } else if (answer?.toLowerCase() == "borrow") {
    borrow();
  }
  return true;
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

bool borrowerDetails() {
  stdout.write("Enter borrower Name: ");
  customerName = stdin.readLineSync();

  stdout.write("Enter borrower Contact: ");
  phoneNumber = stdin.readLineSync();

  stdout.write("Enter Payment: ");
  payment = stdin.readLineSync();

  return true;
}

bool borrow() {
  stdout.write("Enter category name: ");
  listName = stdin.readLineSync();

  switch (listName?.toLowerCase().trim()) {
    case 'crime novels':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      borrowerDetails();
      crimeNovels.remove(bookName);
      break;
    case 'entrepreneurship':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      borrowerDetails();
      entrepreneurship.remove(bookName);
      break;
    case 'mathematics':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      borrowerDetails();
      mathematics.remove(bookName);
      break;
    case 'english novels':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      borrowerDetails();
      englishNovel.remove(bookName);
      break;
    case 'science':
      stdout.write("Enter book name: ");
      String? bookName = stdin.readLineSync()!.trim();
      borrowerDetails();
      englishNovel.remove(bookName);
      break;
    default:
      print("Category not found");
  }
  return true;
}
