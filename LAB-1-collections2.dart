import 'dart:math';

void main() {
  List<int> randomNumbers = generateRandomNumbers(20);
  print('Random Numbers:');
  printList(randomNumbers);

  Set<int> uniqueNumbers = Set<int>.from(randomNumbers);
  print('\nUnique Numbers:');
  printList(uniqueNumbers.toList());
}

List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    numbers.add(random.nextInt(100));
  }

  return numbers;
}

void printList(List<int> list) {
  for (var item in list) {
    print(item);
  }
}