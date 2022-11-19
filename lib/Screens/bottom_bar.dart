import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:meaties_app/Screens/favorite_screen.dart';
import 'package:meaties_app/Screens/home_screen.dart';
import 'package:meaties_app/Screens/menu_screen.dart';
import 'package:meaties_app/Screens/profile_screen.dart';

import '../Utils/app_styles.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _navBarIndex = 0;

  static final List<Widget> _navBarOptions = <Widget>[
    HomeScreen(),
    const MenuScreen(),
    const FavoriteScreen(),
    const ProfileScreen()
  ];

  void _onNavBarTapped(int index) {
    setState(() {
      _navBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _navBarOptions[_navBarIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navBarIndex,
        onTap: _onNavBarTapped,
        elevation: 8,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Styles.primaryColor,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Styles.secondaryColor,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_food_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_food_filled),
              label: "Menu"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_favorites_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_favorites_filled),
              label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_accounts_regular),
              activeIcon:
                  Icon(FluentSystemIcons.ic_fluent_person_accounts_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
