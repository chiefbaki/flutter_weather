import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weather/presentation/theme/app_colors.dart';
import 'package:weather/presentation/theme/app_fonts.dart';
import 'package:weather/presentation/widgets/buttons.dart';
import 'package:weather/presentation/widgets/weather_row.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool themeState = true;

  void changeTheme() {
    setState(() {
      themeState = !themeState;
    });
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: themeState == true
                ? AppColors.bgColorLight
                : AppColors.bgColorDark,
            begin: Alignment.bottomLeft,
            end: Alignment.topRight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ThemeChangeBtn(
                      changeTheme: changeTheme,
                      themeState: themeState,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "San Francisco",
                      style: AppFonts.s36w400.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 20.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Clear",
                  style: AppFonts.s24w400.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  themeState == true
                      ? "assets/img/sun1.png"
                      : "assets/img/moon1.png",
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "11",
                  style: AppFonts.s72w700.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "May XX, 20XX",
                  style: AppFonts.s22w400.copyWith(color: Colors.white),
                ),
                SizedBox(
                  height: 60.h,
                ),
                WeatherRow()
                // Text(weatherState["location"]["name"])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
