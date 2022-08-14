import 'package:flutter/material.dart';
import 'package:my_app/LoginSignUp/auth_screen.dart';
import 'package:my_app/LoginSignUp/constant.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hemayatkar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //define our text field style
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white38,
          border: InputBorder.none,
          hintStyle: TextStyle(color: Colors.white),
          contentPadding: EdgeInsets.symmetric(
              vertical: defaultPadding * 1.2, horizontal: defaultPadding),
        ),
      ),
      home: AuthScreen(),
    );
  }
}
