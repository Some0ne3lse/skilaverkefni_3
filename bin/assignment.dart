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
        addMultipleItemsToList(shoppingList);
        printOutList(shoppingList);
        continueFromResult();
        break;
      case '3':
        printOutList(shoppingList);
        continueFromResult();
        break;
      case '4':
        removeItemFromList(shoppingList);
        break;
      case '5':
        print('Goodbye!');
        programOnOrOff = false;
        break;
      default:
        print('Not a valid option');
    }
  }
}
