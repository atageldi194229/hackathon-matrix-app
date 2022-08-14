import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/LoginSignUp/constant.dart';
import 'package:my_app/LoginSignUp/login_form.dart';
import 'package:my_app/LoginSignUp/social_btns.dart';
import 'package:my_app/LoginSignUp/sign_up.dart';
import 'package:my_app/pathpro.dart';
import 'package:my_app/HomePage/main_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen>
    with SingleTickerProviderStateMixin {
  //if you want to show signup then set it true
  bool _isShowSignUp = false;
  late AnimationController _animationController;
  late Animation<double> _animationTextRotate;
  void setUpAnimation() {
    _animationController =
        AnimationController(vsync: this, duration: defaultDuration);
    _animationTextRotate =
        Tween<double>(begin: 0, end: 90).animate(_animationController);
  }

  void updateView() {
    setState(() {
      _isShowSignUp = !_isShowSignUp;
    });
    _isShowSignUp
        ? _animationController.forward()
        : _animationController.reverse();
  }

  @override
  void initState() {
    setUpAnimation();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    //TODO:implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // it provides us screen height and width
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      body: AnimatedBuilder(
          animation: _animationController,
          builder: (context, _) {
            return Stack(
              children: [
                //animate the transition
                //Login
                AnimatedPositioned(
                    duration: defaultDuration,
                    width: _size.width * 0.88, //we use 88% width for login
                    height: _size.height,
                    left: _isShowSignUp ? -_size.width * 0.76 : 0,
                    child: Container(
                      color: login_bg,
                      child: LoginForm(),
                    )),
                //SignUp
                AnimatedPositioned(
                    duration: defaultDuration,
                    height: _size.height,
                    width: _size.width * 0.88,
                    left:
                        _isShowSignUp ? _size.width * 0.12 : _size.width * 0.88,
                    child: Container(
                      color: signup_bg,
                      child: SignUpForm(),
                    )),
                //Add logo
                // AnimatedPositioned(
                //   duration: defaultDuration,
                //   top: _size.height * 0.1, //10%
                //   right:
                //       _isShowSignUp ? _size.width * 0.06 : _size.width * 0.06,
                //   left: 0,
                //   child: CircleAvatar(
                //       radius: 25,
                //       backgroundColor: Colors.white60,
                //       child: _isShowSignUp
                //           ? SvgPicture.asset(
                //               'asset/logo.svg',
                //               color: signup_bg,
                //             )
                //           : SvgPicture.asset(
                //               'asset/logo.svg',
                //               color: login_bg,
                //               // backgroundColor: login_bg,
                //             )),
                // ),
                AnimatedPositioned(
                  duration: defaultDuration,
                  width: _size.width,
                  right:
                      _isShowSignUp ? _size.width * 0.06 : _size.width * 0.06,
                  // shift it 6% bc signup side took 12%
                  bottom: _size.height * 0.1,
                  child: SocialBtns(),
                ),

                //Login Text
                AnimatedPositioned(
                  duration: defaultDuration,
                  left: _isShowSignUp ? 0 : _size.width * 0.44 - 80,
                  bottom: _isShowSignUp
                      ? _size.height / 2 - 80
                      : _size.height * 0.3,
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: _isShowSignUp ? 20 : 32,
                      fontWeight: FontWeight.bold,
                      color: _isShowSignUp ? Colors.white : Colors.white70,
                    ),
                    child: Transform.rotate(
                      angle: -_animationTextRotate.value * pi / 180,
                      alignment: Alignment.topLeft,
                      child: InkWell(
                        onTap: () {
                          if (_isShowSignUp) {
                            updateView();
                          } else {
                            // login
                          }
                        },
                        child: InkWell(
                          onTap: () {
                            PathPro().pathWrite("true");
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MainScreen()));
                            setState(() {});
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: defaultPadding * 0.75),
                            width: 160,
                            child: Text(
                              'Log In'.toUpperCase(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                //SignUp Text
                AnimatedPositioned(
                  duration: defaultDuration,
                  right: _isShowSignUp ? _size.width * 0.44 - 80 : 0,
                  bottom: !_isShowSignUp
                      ? _size.height / 2 - 80
                      : _size.height * 0.3,
                  child: AnimatedDefaultTextStyle(
                    duration: defaultDuration,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: !_isShowSignUp ? 20 : 32,
                      fontWeight: FontWeight.bold,
                      color: _isShowSignUp ? Colors.white : Colors.white70,
                    ),
                    child: Transform.rotate(
                      angle: (90 - _animationTextRotate.value) * pi / 180,
                      alignment: Alignment.topRight,
                      child: InkWell(
                        onTap: () {
                          if (_isShowSignUp) {
                            //Sign up
                          } else {
                            updateView();
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: defaultPadding * 0.75),
                          width: 160,
                          child: Text(
                            'Sign Up'.toUpperCase(),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
