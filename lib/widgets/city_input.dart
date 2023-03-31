import 'package:flutter/material.dart';

class CityInput extends StatefulWidget {
  final Function onSubmitted;

  CityInput({required this.onSubmitted});

  @override
  _CityInputState createState() => _CityInputState();
}

class _CityInputState extends State<CityInput> {
  late String _cityName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: 'Enter City Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {
          _cityName = value;
        },
        onSubmitted: (value) {
          widget.onSubmitted(value);
        },
      ),
    );
  }
}
