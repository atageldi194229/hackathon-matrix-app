import 'package:flutter/material.dart';
import 'package:my_app/HomePage/main_screen.dart';
import 'LoginSignUp/start_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StartPage();
  }
}
