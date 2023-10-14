import 'dart:io';
import 'functions.dart';

void main() {

  bool programOnOrOff = true;

  List<String> shoppingList = [];

  while (programOnOrOff == true) {
    mainMenu();
    switch(stdin.readLineSync()) {
      case '1':
        addItemToList(shoppingList);
        continueFromResult();
        break;
      case '2':
        printOutList(shoppingList);
        continueFromResult();
        break;
      case '3':
        removeItemFromList(shoppingList);
        continueFromResult();
        break;
      case '4':
        print('Goodbye!');
        programOnOrOff = false;
        break;
      default:
        print('Not a valid option');
    }
  }
}
