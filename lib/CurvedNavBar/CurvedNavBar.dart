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
  int index = 2;
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
        Icons.favorite,
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
      color: Colors.blue,
      child: SafeArea(
        child: ClipRRect(
          child: Scaffold(
            extendBody: true,
            backgroundColor: Colors.red,
            appBar: AppBar(
              title: Text('Curved Navigation Bar'),
              elevation: 0,
              centerTitle: true,
            ),
            body: screens[index],
            // Center(
            //   child: Column(
            //     children: [
            //       Text('$index',
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 120,
            //             fontWeight: FontWeight.bold,
            //           )),
            //       SizedBox(height: 16),
            //       ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //           onPrimary: Colors.black,
            //           primary: Colors.white,
            //           minimumSize: Size(250, 56),
            //         ),
            //         child: Text(
            //           'Go to 0',
            //           style: TextStyle(fontSize: 32),
            //         ),
            //         onPressed: () {
            //           final navigationState = navigationKey.currentState!;
            //           navigationState.setPage(0);
            //         },
            //       ),
            //     ],
            //   ),
            // ),
            // Image.network('https://images.unsplash.com/photo-1483884105135-c06ea81a7a80?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHdvbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
            // fit:BoxFit.cover,
            // height:double.infinity,
            // width:double.infinity),
            bottomNavigationBar: Theme(
              data: Theme.of(context)
                  .copyWith(iconTheme: IconThemeData(color: Colors.white)),
              child: CurvedNavigationBar(
                key: navigationKey,
                color: Colors.blue,
                buttonBackgroundColor: Colors.purple,
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
