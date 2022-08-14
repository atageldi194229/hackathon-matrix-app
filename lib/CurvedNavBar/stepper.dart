import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:im_stepper/stepper.dart';
import 'package:my_app/CurvedNavBar/Pages/home_page.dart';
import 'package:my_app/LoginSignUp/constant.dart';

class StepperPage extends StatefulWidget {
  StepperPage({Key? key}) : super(key: key);

  @override
  State<StepperPage> createState() => _StepperPageState();
}

class _StepperPageState extends State<StepperPage> {
  int selectedIndex = 0;
  String radioBoxValue = '';
  bool switchListState = false;
  List stepperList = ["Hasap ach", "Ish sayla", "Profil", "Ylalashyk", "Toleg"];
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Isleyish Tertibi"),
      ),
      body: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 25),
              child: Text(
                "Gozle:",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: RadioListTile<String>(
                  contentPadding: EdgeInsets.all(0),
                  title: Text('Hemayatkar'),
                  value: 'hemayatkar',
                  groupValue: radioBoxValue,
                  onChanged: (value) {
                    setState(() {
                      radioBoxValue = value!;
                      debugPrint('saylandy: $value');
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: RadioListTile<String>(
                  contentPadding: EdgeInsets.all(0),
                  title: Text('Ish beryan'),
                  value: 'ish beryan',
                  groupValue: radioBoxValue,
                  onChanged: (value) {
                    setState(() {
                      radioBoxValue = value!;
                      debugPrint('saylandy: $value');
                    });
                  },
                ),
              ),
            ),
          ]),
          SizedBox(height: 45),
          Row(
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: IconStepper(
                  steppingEnabled: true,
                  stepRadius: 25.0,
                  stepColor: Color.fromRGBO(219, 91, 159, 1),
                  activeStepBorderColor: Color.fromRGBO(219, 91, 159, 1),
                  activeStepColor: Color.fromRGBO(219, 91, 159, 1),
                  lineColor: Color.fromRGBO(219, 91, 159, 1),
                  direction: Axis.vertical,
                  icons: [
                    Icon(
                      Icons.note_alt,
                    ),
                    Icon(
                      Icons.note_alt_outlined,
                    ),
                    Icon(Icons.account_box),
                    Icon(Icons.handshake),
                    Icon(Icons.payment),
                  ],
                  onStepReached: (value) {
                    setState(() {
                      selectedIndex = value;
                      a = value;

                      // selectedIndex=value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "${selectedIndex + 1}",
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    Text("${stepperList[a]}",
                        style: TextStyle(
                          fontSize: 40,
                        )),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
