import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/data/models/wather_model.dart';
import 'package:weather/data/repositories/get_weather_repo.dart';
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
      child: FutureBuilder(
        future: GetWeatherRepo().getWeather(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data);
            try {
              WeatherModel model = snapshot.data!;
            } catch (e) {
              print(e.toString());
            }
            WeatherModel model = snapshot.data ?? WeatherModel();
            return Scaffold(
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
                            model.name ?? '',
                            style:
                                AppFonts.s36w400.copyWith(color: Colors.white),
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
                        model.weather?.first.main ?? '',
                        style: AppFonts.s24w400.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Image.network(
                        'https://openweathermap.org/img/wn/${model.weather?.first.icon}@2x.png',
                        width: 100,
                        height: 100,
                        errorBuilder: (context, error, stackTrace) =>
                            const Icon(
                          Icons.error,
                          size: 100,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        model.main?.temp.toString() ?? '',
                        style: AppFonts.s72w700.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "${DateTime.now()}",
                        style: AppFonts.s22w400.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      const WeatherRow()
                      // Text(weatherState["location"]["name"])
                    ],
                  ),
                ),
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
