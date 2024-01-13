import 'dart:io';

void main() {
  books();
}
// Home page

bool books() {
  List<String> crimeNovels = ["Cave and Shadows", "A Time to Kill"];
  List<String> entrepreneurship = [];
  List<String> mathematics = [];
  List<String> englishNovel = [];

  stdout.write("Do you want to add or remove book?");
  String? answer = stdin.readLineSync();
  if (answer?.toLowerCase() == "add") {
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
        stdout.write("Enter book name: ");
        String? bookName = stdin.readLineSync()!;
        entrepreneurship.add(bookName);
        break;
      case 'Mathematics':
        print(mathematics);
        stdout.write("Enter book name: ");
        String? bookName = stdin.readLineSync()!;
        mathematics.add(bookName);
        break;
      case 'English Novels':
        print(englishNovel);
        stdout.write("Enter book name: ");
        String? bookName = stdin.readLineSync()!;
        englishNovel.add(bookName);
        break;
      default:
        print("Category not found");
    }
  } else {
    print("Okay");
  }
  return true;
}
