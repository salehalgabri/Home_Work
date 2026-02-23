import 'dart:io';

/**
 * 1. Notes App – Organize Your Notes

You are building a simple notes app where users can write and manage their notes.
- Each note should have a title, some content, and the date it was created.
- The app should allow creating new notes.
- The app should allow listing all notes.
- The app should allow searching for a note by its title.
 */

class Notes {
  String title;
  String content;
  DateTime? createdAt;

  Notes({required this.title, required this.content}) {
    this.createdAt = DateTime.now();
  }
}

void main() {
  List<Notes> notes = [];
  String flag = '*';
  print('Welcome to the Notes program');
  do {
    print('Choose one of the available options:');
    print('1.To create a new note,  enter 1');
    print('2.To view all notes,  enter 2');
    print('3.In order to search for a note,  enter 3');
    print('4.To exit the program, enter 4');
    stdout.write('Your Input:');
    flag = stdin.readLineSync()!;
    switch (flag) {
      case '1':
        String title, content;
        stdout.write('Enter The title of The Note:');
        title = stdin.readLineSync()!;
        stdout.write('Enter The content of The Note:');
        content = stdin.readLineSync()!;
        notes.add(Notes(title: title, content: content));
        print("The note was successfully created");
        break;
      case '2':
        if (notes.length > 0) {
          for (Notes note in notes) {
            print(note.title);
            print(note.content);
            print('This Note Created At ${note.createdAt}');
          }
        }
        break;
      case '3':
        stdout.write('Enter the exact title of the note to search for it: ');
        String temp = stdin.readLineSync()!;
        bool found = false;
        for (Notes item in notes) {
          if (item.title == temp) {
            print(item.title);
            print(item.content);
            print('This Note Created At ${item.createdAt}');
            print('Note number: ${notes.indexOf(item)}');
            found = true;
            break;
          }
        }
        if (!found) {
          print('Note not found');
        }
        break;

      case '*':
        print('You have exit out of the app.');
        break;
    }
    print('\n***************************************************\n');
  } while (flag != '4');
}
