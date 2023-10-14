import 'dart:io';

void mainMenu () {
  print('Hello, and welcome to the Shopping List!');
  print('Choose an option:');
  print('1: Add item to the list\n2: Add multiple items to the list\n'
      '3: View the list\n4: Remove one or more items from list\n5: Exit');
}
// The code below can be simpler, but for User comfort I've made it this way
void addItemToList(List<String> listName) {
  print('Enter what you want to add to your list:');
  String itemToAdd = nullEscapeFromString();
  listName.add(itemToAdd);
  print('Adding $itemToAdd to list...');
}

void addMultipleItemsToList(List<String> listName) {
  bool addingToList = true;
  while (addingToList == true) {
    print('Enter what you want to add to your list (Enter return to return to menu:');
    String itemToAdd = nullEscapeFromString();
    if (itemToAdd == 'return' || itemToAdd == 'Return') {
      print('Returning to menu');
      addingToList = false;
    } else {
      listName.add(itemToAdd);
      print('Adding $itemToAdd to list...');
    }
  }
}
void removeItemFromList(List<String> listName) {
  bool removingFromList = true;
  while (removingFromList == true) {
    printOutList(listName);
    print('Enter what you want to remove from the list (Type return to return to menu)');
    String itemToRemove = nullEscapeFromString();
    if (listName.contains(itemToRemove)) {
      listName.remove(itemToRemove);
      print('Removing $itemToRemove');
    } else if (itemToRemove == 'return' || itemToRemove == 'Return') {
      removingFromList = false;
    } else {
      print('Item $itemToRemove not found in list');
    }
  }
}

void printOutList(List<String> list){
  print('Your current list is:');
  for (var item in list) {
    print(item);
  }
}

void continueFromResult() {
  print('Press Enter to continue');
  stdin.readLineSync();
}

String nullEscapeFromString(){
  String? sentence;
  while (sentence == null || sentence.isEmpty) {
    sentence = stdin.readLineSync();
    if (sentence == null || sentence.isEmpty) {
      print("Invalid option");
    }
  }
  return sentence;
}