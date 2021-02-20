import 'package:flutter/material.dart';
import 'package:ysepeti/constants/color_constants.dart';
import 'package:ysepeti/home/view/home_view.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final HomeStringValues values = HomeStringValues();
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        new BottomNavigationBarItem(
            icon: Icon(
              Icons.food_bank,
            ),
            label: values.a),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: values.b),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket), label: values.c),
        BottomNavigationBarItem(icon: Icon(Icons.forum), label: values.d),
        BottomNavigationBarItem(icon: Icon(Icons.dehaze), label: values.e),
      ],
      selectedItemColor: ColorConstants.instance.selectedItemNavigation,
      unselectedItemColor: Colors.grey,
    );
  }
}
