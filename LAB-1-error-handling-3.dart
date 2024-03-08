import 'dart:io';

void readFile(String filePath) {
  try {
    File file = File(filePath);
    List<String> lines = file.readAsLinesSync();

    print('File Contents:');
    lines.forEach((line) => print(line));
  } catch (e) {
    if (e is FileSystemException) {
      if (e.osError?.errorCode == 2) {
        print('Error: File not found at the specified path: $filePath');
      } else {
        print('Error: An error occurred while reading the file.');
      }
    } else {
      print('Error: An unexpected error occurred.');
    }
  }
}

void main() {
  String filePath = 'path/to/nonexistent/file.txt';
  readFile(filePath);
}