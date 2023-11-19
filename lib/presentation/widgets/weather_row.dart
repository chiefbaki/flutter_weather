import 'package:flutter/material.dart';
import 'package:weather/presentation/widgets/weather_row_item.dart';

class WeatherRow extends StatefulWidget {
  const WeatherRow({super.key,});

  @override
  State<WeatherRow> createState() => _WeatherRowState();
}

class _WeatherRowState extends State<WeatherRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        WeatherRowItem()
      ],
    );
  }
}

