import 'dart:io';

void mainMenu () {
  print('Hello, and welcome to the Shopping List!');
  print('Choose an option:');
  print('1: Add item to the list\n2: View the list\n3: Remove item from list'
      '\n4: Exit');
}
// The code below can be simpler, but for User comfort I've made it this way
void addItemToList(List<String> listName) {
  print('Enter what you want to add to your list:');
  String itemToAdd = nullEscapeFromString();
  listName.add(itemToAdd);
  print('Adding $itemToAdd to list...');
}

void removeItemFromList(List<String> listName) {
  print('Enter what you want to remove from the list');
  String itemToRemove = nullEscapeFromString();
  if (listName.contains(itemToRemove)) {
    listName.remove(itemToRemove);
    print('Removing $itemToRemove');
  } else {
    print('Item $itemToRemove not found in list');
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