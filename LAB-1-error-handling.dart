import 'dart:io';

void main() {
  print('Enter a number:');
  String userInput = stdin.readLineSync() ?? '';

  try {
    int number = int.parse(userInput);
    print('Converted number: $number');
  } catch (e) {
    print('Invalid number format. Please enter a valid number.');
  }
}