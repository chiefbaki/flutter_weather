import 'package:flutter/material.dart';
import 'package:weather/presentation/theme/app_colors.dart';

class ThemeChangeBtn extends StatefulWidget {
  final void Function() changeTheme;
  bool themeState;
  ThemeChangeBtn({super.key, required this.changeTheme, required this.themeState});

  @override
  State<ThemeChangeBtn> createState() => _ThemeChangeBtnState();
}

class _ThemeChangeBtnState extends State<ThemeChangeBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppColors.circleBackground,
      ),
      child: IconButton(onPressed: widget.changeTheme,
      icon: Icon(widget.themeState ? Icons.brightness_3 : Icons.brightness_5)),
    );
  }
}