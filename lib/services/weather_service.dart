import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherService {
  static const baseUrl = 'https://api.openweathermap.org/data/2.5';
  static const apiKey = 'your_api_key_here';

  Future<Map<String, dynamic>> getWeatherByCity(String cityName) async {
    final queryParameters = {'q': cityName, 'appid': apiKey, 'units': 'metric'};
    final uri = Uri.parse('$baseUrl/weather').replace(queryParameters: queryParameters);
    final response = await http.get(uri);
    return json.decode(response.body);
  }

  Future<Map<String, dynamic>> getWeatherByLocation(double latitude, double longitude) async {
    final queryParameters = {'lat': latitude.toString(), 'lon': longitude.toString(), 'appid': apiKey, 'units': 'metric'};
    final uri = Uri.parse('$baseUrl/weather').replace(queryParameters: queryParameters);
    final response = await http.get(uri);
    return json.decode(response.body);
  }
}
