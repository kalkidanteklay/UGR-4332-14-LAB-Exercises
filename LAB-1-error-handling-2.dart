void divideNumbers(int a, int b) {
  try {
    if (b == 0) {
      throw Exception('Cannot divide by zero');
    }
    int result = a ~/ b;
    print('Result: $result');
  } catch (e) {
    print('An error occurred: $e');
  } 
}

void main() {
  divideNumbers(10, 2);
  divideNumbers(10, 0);
}