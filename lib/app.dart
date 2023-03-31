import 'package:flutter/material.dart';
import 'package:my_weather_app/providers/weather_provider.dart';
import 'package:my_weather_app/screens/loading_screen.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/providers/weather_provider.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/screens/loading_screen.dart';
import 'package:weather_app/screens/location_screen.dart';
import 'package:weather_app/utils/constants.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<WeatherProvider>(
      create: (context) => WeatherProvider(),
      child: MaterialApp(
        title: 'Weather App',
        initialRoute: LoadingScreen.routeName,
        routes: {
          LoadingScreen.routeName: (context) => LoadingScreen(),
          HomeScreen.routeName: (context) => HomeScreen(),
          LocationScreen.routeName: (context) => LocationScreen(),
        },
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}
