import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  static const String apiKey = 'YOUR_API_KEY';
  static const String baseUrl = 'https://api.openweathermap.org/data/2.5/weather';

  static Future<Map<String, dynamic>> fetchWeatherData(String city) async {
    final url = '$baseUrl?q=$city&appid=$apiKey';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}

void main() async {
  String city = 'London';

  try {
    Map<String, dynamic> weatherData = await WeatherApiClient.fetchWeatherData(city);
    double temperature = weatherData['main']['temp'];
    String conditions = weatherData['weather'][0]['description'];

    print('Current Weather in $city:');
    print('Temperature: ${temperature.toStringAsFixed(1)}°C');
    print('Conditions: $conditions');
  } catch (e) {
    print('Error: $e');
  }
}