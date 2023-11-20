import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/presentation/theme/app_colors.dart';
import 'package:weather/presentation/theme/app_fonts.dart';

class WeatherRowItem extends StatefulWidget {
  final String day;
  final String img;
  const WeatherRowItem({super.key, required this.day, required this.img});

  @override
  State<WeatherRowItem> createState() => _WeatherRowItemState();
}

class _WeatherRowItemState extends State<WeatherRowItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 2,
          width: 360.w,
          color: Colors.grey,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100.w,
              child: Text(
                widget.day,
                style: AppFonts.s20w400.copyWith(color: Colors.white),
              ),
            ),
            SizedBox(
              width: 60.w,
            ),
            Image.asset(widget.img),
            SizedBox(
              width: 60.w,
            ),
            Text(
              "10",
              style: AppFonts.s24w400.copyWith(color: Colors.white),
            ),
            SizedBox(
              width: 20.w,
            ),
            Text(
              "10",
              style: AppFonts.s24w400.copyWith(color: AppColors.tempColor),
            ),
          ],
        ),
      ],
    );
  }
}
