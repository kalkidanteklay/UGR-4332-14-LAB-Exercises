import 'dart:io';


const int speedOfLight = 299792458; 

void main() {
  print('Enter the distance (in meters):');
  String input = stdin.readLineSync()!;
  int distance = int.parse(input);

  double time = distance / speedOfLight;

  print('Time taken for light to travel $distance meters: $time seconds');
}