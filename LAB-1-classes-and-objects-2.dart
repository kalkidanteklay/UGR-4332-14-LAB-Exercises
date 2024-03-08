class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int total = 0;
    for (int mark in marks) {
      total += mark;
    }
    return total;
  }

  double calculateAverageMarks() {
    int total = calculateTotalMarks();
    return total / marks.length;
  }
}

void main() {
  
  Student student1 = Student('Kalkidan', 20, 'Bole', 01, [100, 90, 92, 88, 95]);
  Student student2 = Student('Meron', 21, 'Bole', 02, [78, 83, 80, 87, 90]);

  
  int totalMarks1 = student1.calculateTotalMarks();
  int totalMarks2 = student2.calculateTotalMarks();
  print('Student 1 Total Marks: $totalMarks1');
  print('Student 2 Total Marks: $totalMarks2');

  
  double averageMarks1 = student1.calculateAverageMarks();
  double averageMarks2 = student2.calculateAverageMarks();
  print('Student 1 Average Marks: $averageMarks1');
  print('Student 2 Average Marks: $averageMarks2');
}