import 'package:flutter/material.dart';

class JobsPage extends StatefulWidget {
  JobsPage({Key? key}) : super(key: key);

  @override
  State<JobsPage> createState() => _JobsPageState();
}

class _JobsPageState extends State<JobsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: Text("Job list"),
      ),
      body: Center(
        child: Text(
          "Jobs Page",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}