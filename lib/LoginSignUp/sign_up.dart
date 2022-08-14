import 'package:flutter/material.dart';
import 'package:my_app/LoginSignUp/constant.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.13),
      child: Form(
          child: Column(
        children: [
          Spacer(),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Email',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: defaultPadding),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Confirm Passsword',
            ),
          ),
          Spacer(
            flex: 2,
          )
        ],
      )),
    );
  }
}
