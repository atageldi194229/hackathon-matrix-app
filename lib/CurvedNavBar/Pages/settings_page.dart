import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Settings"),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.account_box_sharp),
              title: Text(
                "Biz barada",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.forward,
                color: Colors.blue,
              ),
            ),
            Divider(
              thickness: 1,
              height: 10,
              indent: 20,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text(
                "Paylashmak",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.forward,
                color: Colors.blue,
              ),
            ),
            Divider(
              thickness: 1,
              height: 10,
              indent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
