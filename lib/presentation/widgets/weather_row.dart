import 'package:flutter/material.dart';
import 'package:weather/presentation/theme/app_colors.dart';
import 'package:weather/presentation/theme/app_fonts.dart';

class WeatherRow extends StatefulWidget {
  const WeatherRow({super.key});

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

class WeatherRowItem extends StatefulWidget {
  const WeatherRowItem({super.key});

  @override
  State<WeatherRowItem> createState() => _WeatherRowItemState();
}

class _WeatherRowItemState extends State<WeatherRowItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Monday",
          style: AppFonts.s20w400.copyWith(color: Colors.white),
        ),
        Image.asset("assets/img/cloud1.png"),
        Text(
          "10",
          style: AppFonts.s24w400.copyWith(color: Colors.white),
        ),
        Text(
          "10",
          style: AppFonts.s24w400.copyWith(color: AppColors.tempColor),
        ),
      ],
    );
  }
}
