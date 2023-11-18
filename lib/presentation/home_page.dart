import 'package:flutter/material.dart';
import 'package:weather/presentation/theme/app_colors.dart';
import 'package:weather/presentation/widgets/buttons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool themeState = true;
    
  void changeTheme(){
    setState(() {
      themeState = !themeState;
    });
  }
     
  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: themeState == true ? AppColors.bgColorLight : AppColors.bgColorDark, begin: Alignment.bottomLeft, end: Alignment.topRight),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ThemeChangeBtn(changeTheme: changeTheme, themeState: themeState,),
                    Text("Hello")
                  ],
                )
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}