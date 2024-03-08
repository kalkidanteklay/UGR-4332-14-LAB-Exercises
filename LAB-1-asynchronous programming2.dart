import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully');
  } else {
    throw Exception('Failed to download file');
  }
}

void main() async {
  String url = 'https://example.com/sample.pdf';
  String savePath = 'path/to/save/sample.pdf';

  try {
    await downloadFile(url, savePath);
  } catch (e) {
    print('Error: $e');
  }
}