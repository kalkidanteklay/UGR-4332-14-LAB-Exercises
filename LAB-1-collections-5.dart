class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0;
    }

    int totalMarks = marks.reduce((value, element) => value + element);
    return totalMarks / marks.length;
  }
}

void main() {
  // Create a student instance
  Student student = Student('Alice', [85, 92, 78, 90, 88]);

  // Calculate and print the average mark
  double averageMark = student.calculateAverageMark();
  print('Average Mark: $averageMark');
}