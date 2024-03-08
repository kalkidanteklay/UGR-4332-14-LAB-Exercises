import 'dart:async';

class Database {
  static Future<List<String>> loadData() async {
    // Simulating a database delay
    await Future.delayed(Duration(seconds: 2));

    // Simulating loading data from the database
    List<String> data = [
      'Data 1',
      'Data 2',
      'Data 3',
      'Data 4',
      'Data 5',
    ];

    return data;
  }
}

void main() async {
  print('Loading data...');
  
  try {
    List<String> data = await Database.loadData();
    print('Data loaded successfully:');
    data.forEach((item) => print(item));
  } catch (e) {
    print('Error: $e');
  }
}