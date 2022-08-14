import 'package:flutter/material.dart';

class SocialBtns extends StatelessWidget {
  const SocialBtns({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("../asset/instagram.png"),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Image.asset("../asset/facebook.png"),
        ),
        Image.asset("../asset/twitter.png"),

        // IconButton(onPressed: (){}, icon: Icon(Icons.facebook_rounded)),
        // IconButton(onPressed: (){}, icon:Icon(Icons.facebook_outlined)),
        // IconButton(onPressed: (){}, icon: Icon(Icons.facebook_sharp)),
      ],
    );
  }
}
