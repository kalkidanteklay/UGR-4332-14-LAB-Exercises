import 'dart:async';
import 'dart:math';

Future<String> fetchRandomQuote() async {
  
  await Future.delayed(Duration(seconds: 2));


  List<String> quotes = [
    "The love of liberty is the love of others; the love of power is the love of ourselves.",
    "Whatever you may be sure of, be sure of this-that you are dreadfully like other people.",
    "If you don't think your life is worth more than someone else's, sign your donor card and kill yourself now."
  ];

  Random random = Random();
  int index = random.nextInt(quotes.length);

  return quotes[index];
}

void main() async {
  String quote = await fetchRandomQuote();
  print('Random Quote: $quote');
}