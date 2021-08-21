import 'package:flutter/material.dart';
import 'package:state_management_practise/state/nav_bar_state.dart';
import 'package:state_management_practise/views/options_screen.dart';
import 'package:state_management_practise/views/stopwatch_screen.dart';
import 'package:state_management_practise/views/timer_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    NavBarStateState data = NavBarState.of(context);
    index = data.index;
  }

  @override
  Widget build(BuildContext context) {
    _buildNavBarItem(Icon icon, String label) {
      return BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: icon,
          ),
          label: label);
    }

    return BottomNavigationBar(
      elevation: 0,
      currentIndex: index,
      backgroundColor: Theme.of(context).backgroundColor,
      unselectedItemColor: Theme.of(context).accentColor,
      items: <BottomNavigationBarItem>[
        _buildNavBarItem(Icon(Icons.timer), "Stopwatch"),
        _buildNavBarItem(Icon(Icons.slow_motion_video), "Timer"),
        _buildNavBarItem(Icon(Icons.settings), "Settings"),
      ],
      onTap: (ind) {
        NavBarState.of(context).setIndex(ind);

        switch (ind) {
          case 0:
            Navigator.of(context)
                .pushReplacementNamed(StopWatchScreen.routeName);
            break;
          case 1:
            Navigator.of(context).pushReplacementNamed(TimerScreen.routeName);
            break;
          case 2:
            Navigator.of(context).pushReplacementNamed(OptionsScreen.routeName);
            break;
          default:
            Navigator.of(context)
                .pushReplacementNamed(StopWatchScreen.routeName);
            break;
        }
      },
    );
  }
}
