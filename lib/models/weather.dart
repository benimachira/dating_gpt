import 'package:flutter/foundation.dart';

class Weather {
  final String cityName;
  final String description;
  final double temperature;
  final int humidity;
  final double windSpeed;

  Weather({
    required this.cityName,
    required this.description,
    required this.temperature,
    required this.humidity,
    required this.windSpeed,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    final description = json['weather'][0]['description'];
    final temperature = json['main']['temp'].toDouble();
    final humidity = json['main']['humidity'];
    final windSpeed = json['wind']['speed'].toDouble();

    return Weather(
      cityName: cityName,
      description: description,
      temperature: temperature,
      humidity: humidity,
      windSpeed: windSpeed,
    );
  }
}
