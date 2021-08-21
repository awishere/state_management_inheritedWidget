import 'package:flutter/material.dart';
import 'package:state_management_practise/state/nav_bar_state.dart';

class NavBarInheritedWidget extends InheritedWidget {
  NavBarStateState data;

  NavBarInheritedWidget({
    this.data,
    Widget child,
  }) : super(child: child);
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => true;
}
