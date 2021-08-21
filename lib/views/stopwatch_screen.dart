import 'package:flutter/material.dart';
import 'package:state_management_practise/widgets/bottom_nav_bar.dart';

class StopWatchScreen extends StatelessWidget {
  static const routeName = "/stopwatch-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        'StopWatch',
        style: Theme.of(context).textTheme.headline1,
      )),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
