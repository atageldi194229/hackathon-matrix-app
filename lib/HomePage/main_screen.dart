import 'package:flutter/material.dart';
import 'package:my_app/CurvedNavBar/curved_nav_bar.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CurvedNavBar(),
    );
  }
}
