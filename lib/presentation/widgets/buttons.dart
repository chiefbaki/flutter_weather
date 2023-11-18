import 'package:flutter/material.dart';

class ThemeChangeBtn extends StatefulWidget {
  final void Function() changeTheme;
  ThemeChangeBtn({super.key, required this.changeTheme});

  @override
  State<ThemeChangeBtn> createState() => _ThemeChangeBtnState();
}

class _ThemeChangeBtnState extends State<ThemeChangeBtn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(onPressed: widget.changeTheme,
      icon: Icon(Icons.alarm)),
    );
  }
}