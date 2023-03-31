import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather.dart';
import 'package:weather_app/providers/weather_provider.dart';

import '../providers/weather_provider.dart';

class LocationScreen extends StatefulWidget {
  static const routeName = '/location-screen';

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherProvider? _weatherProvider;

  @override
  void initState() {
    super.initState();
    _weatherProvider = Provider.of<WeatherProvider>(context, listen: false);
    _weatherProvider.getCurrentLocationWeather();
  }

  @override
  Widget build(BuildContext context) {
    Weather _weather = _weatherProvider.weather;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _weather == null
              ? CircularProgressIndicator()
              : Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _weather.cityName,
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                _weather.weatherCondition,
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '${_weather.temperature.toStringAsFixed(1)}°C',
                style: TextStyle(
                  fontSize: 64.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
