import 'package:flutter/material.dart';
import 'package:state_management_practise/widgets/bottom_nav_bar.dart';

class TimerScreen extends StatelessWidget {
  static const routeName = "/timer-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'TIMER',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
