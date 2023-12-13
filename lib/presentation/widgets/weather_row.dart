import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/presentation/theme/app_imgs.dart';
import 'package:weather/presentation/widgets/weather_row_item.dart';

class WeatherRow extends StatefulWidget {
  const WeatherRow({super.key,});

  @override
  State<WeatherRow> createState() => _WeatherRowState();
}

class _WeatherRowState extends State<WeatherRow> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 320.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WeatherRowItem(day: "Monday", img: AppImgs.cloud1,),
          SizedBox(
            height: 10.h,
          ),
          WeatherRowItem(day: "Tuesday", img: AppImgs.sun2,),
          SizedBox(
            height: 10.h,
          ),
          WeatherRowItem(day: "Wednesday", img: AppImgs.sun2),
          SizedBox(
            height: 10.h,
          ),
          WeatherRowItem(day: "Thursday", img: AppImgs.rain1),
          SizedBox(
            height: 10.h,
          ),
          WeatherRowItem(day: "Friday", img: AppImgs.snowFlake1),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 2,
            width: 360.w,
            color: Colors.grey,
          ),
          
        ],
      ),
    );
  }
}

