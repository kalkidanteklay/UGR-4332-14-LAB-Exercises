
  void main() {
 List<String> favoriteHobbies = ['swimming', 'reading'];

  
  favoriteHobbies.add('Cooking');
  favoriteHobbies.add('Photography');
   favoriteHobbies.remove('swimming');

  
  print('Favorite Hobbies:');
  printList(favoriteHobbies);

  
 favoriteHobbies.sort();

  
  print('\nSorted Favorite Hobbies:');
  printList(favoriteHobbies);

  
  bool isEmpty = favoriteHobbies.isEmpty;
  print('\nIs the list empty? $isEmpty');
}

void printList(List<String> list) {
  for (var item in list) {
    print('- $item');
  }
}