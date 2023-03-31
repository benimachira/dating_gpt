import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/weather.dart';

class WeatherService {
  static const _baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const _apiKey = '<your-api-key-here>';

  Future<Weather> getWeatherForCity(String cityName) async {
    final url = '$_baseUrl/weather?q=$cityName&units=metric&appid=$_apiKey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return Weather.fromJson(jsonData);
    } else {
      throw Exception('Failed to fetch weather data');
    }
  }
}
