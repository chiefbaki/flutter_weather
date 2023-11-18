import 'package:flutter/material.dart';

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
      child: IconButton(onPressed: widget.changeTheme,
      icon: Icon(widget.themeState ? Icons.brightness_5 : Icons.brightness_2)),
    );
  }
}