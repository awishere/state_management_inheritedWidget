import 'package:flutter/material.dart';
import 'package:state_management_practise/state/nav_bar_state.dart';
import 'package:state_management_practise/views/options_screen.dart';

import 'package:state_management_practise/views/stopwatch_screen.dart';
import 'package:state_management_practise/views/timer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NavBarState(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter State Managmenet',
          theme: ThemeData(
              backgroundColor: Colors.black,
              primaryColor: Colors.white,
              accentColor: Colors.grey.shade600,
              scaffoldBackgroundColor: Colors.black,
              textTheme: TextTheme(
                headline1: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                subtitle1: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                ),
              )),
          routes: {
            StopWatchScreen.routeName: (context) => StopWatchScreen(),
            TimerScreen.routeName: (context) => TimerScreen(),
            OptionsScreen.routeName: (context) => OptionsScreen(),
          },
          home: Scaffold(
            body: StopWatchScreen(),
          )),
    );
  }
}
