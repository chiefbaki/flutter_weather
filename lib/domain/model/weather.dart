class Weather {
  final String name;
  final num tempC;
  final num tempF;
  final DateTime localTime;
  final String conditionText;
  final String icon;
  Weather({
    required this.name,
    required this.tempC,
    required this.tempF,
    required this.localTime,
    required this.conditionText,
    required this.icon,
  });
}
