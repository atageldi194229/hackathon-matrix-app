import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedMenuItem = 0;

  bool switchListState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Profil"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 90,
            color: Colors.white,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        Icons.woman,
                        size: 40,
                      ),
                      radius: 30,
                    ),
                    title: Text(
                      'Maysa',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(22, 22, 22, 1),
                      ),
                    ),
                    subtitle: Text(
                      'Mammetseyidova',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(22, 22, 22, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 140,
            color: Colors.white,
            child: ListView(
              children: [
                SizedBox(height: 8),
                buildAccountOption(context, "Parolyny uytget"),
                Divider(
                  thickness: 1,
                  height: 10,
                  indent: 20,
                ),
                buildAccountOption(context, "Nomerini tassykla"),
                Divider(
                  thickness: 1,
                  height: 10,
                  indent: 20,
                ),
                buildAccountOption(context, "Edilen tolegler"),
                Divider(
                  thickness: 1,
                  height: 10,
                  indent: 20,
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            height: 60,
            color: Colors.white,
            child: SwitchListTile(
              value: switchListState,
              onChanged: (value) {
                setState(() {
                  switchListState = value;
                });
              },
              title: Text(
                'Bildirish',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildAccountOption(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                  title: Text(title),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        keyboardType: TextInputType.name,
                        cursorHeight: 30,
                        autofocus: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(6)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  actions: [
                    ButtonBar(
                      children: [
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Save',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                  ]);
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(22, 22, 22, 1),
                )),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.blue,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
