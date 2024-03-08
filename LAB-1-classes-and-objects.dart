class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
  Person person1 = Person('Kal', 20, 'yeka');
  Person person2 = Person('Meron', 30, 'Bole');

  
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');

  
  print('Name: ${person2.name}');
  print('Age: ${person2.age}');
  print('Address: ${person2.address}');

  
  person1.age = 26;
  person2.address = 'Arada';

  
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  

  
  print('Name: ${person2.name}');
  print('Address: ${person2.address}');
}


