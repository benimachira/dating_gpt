import 'package:flutter/material.dart';
import 'package:weather_app/utilities/constants.dart';

class WeatherCard extends StatelessWidget {
  final String day;
  final String temperature;
  final String weatherIcon;

  WeatherCard({this.day, this.temperature, this.weatherIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: kCardColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            day,
            style: kCardTitleTextStyle,
          ),
          SizedBox(
            height: 16.0,
          ),
          Image.asset(
            'assets/images/$weatherIcon.png',
            width: 70.0,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            temperature,
            style: kCardSubtitleTextStyle,
          ),
        ],
      ),
    );
  }
}
