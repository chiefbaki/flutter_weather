import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/core/consts/app_consts.dart';
import 'package:weather/core/network/dio_settings.dart';
import 'package:weather/data/models/wather_model.dart';

class GetWeatherRepo {
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<WeatherModel> getWeather() async {
    final Dio dio = DioSettings().dio;
    final Position position = await _determinePosition();
    final Response response = await dio.get(
      'weather?',
      queryParameters: {
        'lat': position.latitude,
        'lon': position.longitude,
        'appid': AppConsts.apiKey,
        'units': 'metric',
      },
    );

    return WeatherModel.fromJson(
      response.data,
    );
  }
}
