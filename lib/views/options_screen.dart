import 'package:flutter/material.dart';
import 'package:state_management_practise/widgets/bottom_nav_bar.dart';

class OptionsScreen extends StatelessWidget {
  static const routeName = "/options-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'OPTIONS',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
