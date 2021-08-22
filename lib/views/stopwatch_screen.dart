import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_practise/state/provider/stopwatch_provider.dart';
import 'package:state_management_practise/widgets/bottom_nav_bar.dart';

class StopWatchScreen extends StatelessWidget {
  static const routeName = "/stopwatch-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider(
        create: (context) => StopwatchProvider(),
        child: Consumer<StopwatchProvider>(builder: (ctx, state, _) {
          if (state.isRunning) {
            return Center(
                child: Text(
              state.elapsedTimeString,
              style: Theme.of(context).textTheme.headline1,
            ));
          } else {
            return Center(
              child: GestureDetector(
                onTap: state.start,
                child: Icon(
                  Icons.play_circle_outline,
                  size: 200,
                  color: Colors.white,
                ),
              ),
            );
          }
        }),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
