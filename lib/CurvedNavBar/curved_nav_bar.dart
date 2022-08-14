import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:my_app/CurvedNavBar/Pages/favorite_page.dart';
import 'package:my_app/CurvedNavBar/Pages/home_page.dart';
import 'package:my_app/CurvedNavBar/Pages/profile_page.dart';
import 'package:my_app/CurvedNavBar/Pages/search_page.dart';
import 'package:my_app/CurvedNavBar/Pages/settings_page.dart';

class CurvedNavBar extends StatefulWidget {
  CurvedNavBar({Key? key}) : super(key: key);

  @override
  State<CurvedNavBar> createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 0;
  final screens = [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    SettingsPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(
        Icons.home,
        size: 30,
      ),
      Icon(
        Icons.search,
        size: 30,
      ),
      Icon(
        Icons.add_circle_outline_rounded,
        size: 30,
      ),
      Icon(
        Icons.settings,
        size: 30,
      ),
      Icon(
        Icons.person,
        size: 30,
      ),
    ];

    return Container(
      color: Color.fromRGBO(40, 133, 198, 1),
      child: SafeArea(
        child: ClipRRect(
          child: Scaffold(
            extendBody: true,
            backgroundColor: Colors.red,
            body: screens[index],
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(iconTheme: IconThemeData(color: Colors.white)),
              child: CurvedNavigationBar(
                key: navigationKey,
                color: Color.fromRGBO(40, 133, 198, 1),
                buttonBackgroundColor: Color.fromRGBO(219, 91, 159, 1),
                backgroundColor: Colors.transparent,
                height: 60,
                animationCurve: Curves.easeInOut,
                //animationDuration: Duration(milliseconds: 300),
                items: items,
                index: index,
                onTap: (index) => setState(() {
                  this.index = index;
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
