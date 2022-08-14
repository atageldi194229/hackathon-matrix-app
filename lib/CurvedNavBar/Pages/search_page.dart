import 'package:flutter/material.dart';
import 'package:my_app/LoginSignUp/constant.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Gozleg'),
        shadowColor: signup_bg,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, right: 10, left: 10),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Gozle",
            fillColor: Colors.white10,
            hintStyle: TextStyle(color: Colors.grey.shade500, fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            labelStyle: new TextStyle(color: Colors.grey.shade600),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade600,
              size: 40,
            ),
            suffixIcon: Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.grey.shade600,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Icon(
                Icons.menu,
                color: Colors.white,
                size: 40,
              ),
            ),
            filled: true,
          ),
        ),
      ),
    );
  }
}
