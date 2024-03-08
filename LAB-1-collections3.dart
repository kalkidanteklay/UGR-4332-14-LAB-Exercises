void main() {
  Map<String, int> studentMarks = {};

  // Add entries to the map
  studentMarks.putIfAbsent('Alice', () => 85);
  studentMarks.putIfAbsent('Bob', () => 92);
  studentMarks.putIfAbsent('Charlie', () => 78);
  studentMarks.putIfAbsent('David', () => 90);
  studentMarks.putIfAbsent('Eve', () => 88);

  // Iterate over the map
  print('Student Marks:');
  studentMarks.forEach((key, value) {
    print('$key: $value');
  });

  // Check if a specific key exists
  String studentName = 'Bob';
  bool containsKey = studentMarks.containsKey(studentName);
  print('\nDoes the map contain the key "$studentName"? $containsKey');
}