import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.circleBackground,
      ),
      child: IconButton(onPressed: widget.changeTheme,
      icon: Icon(widget.themeState ? Icons.brightness_3 : Icons.brightness_5)),
    );
  }
}