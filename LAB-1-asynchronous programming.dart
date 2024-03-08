import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<String> fetchRandomQuote() async {
  // Simulating a network delay
  await Future.delayed(Duration(seconds: 2));

  // Fetching a random quote from the QuoteGarden API
  final response = await http.get(Uri.parse('https://quote-garden.herokuapp.com/api/v3/quotes/random'));
  if (response.statusCode == 200) {
    final quote = jsonDecode(response.body)['data'][0]['quoteText'];
    return quote;
  } else {
    throw Exception('Failed to fetch random quote');
  }
}

void main() async {
  try {
    String quote = await fetchRandomQuote();
    print('Random Quote: $quote');
  } catch (e) {
    print('Error: $e');
  }
}