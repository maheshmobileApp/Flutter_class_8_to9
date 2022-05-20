import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared extends StatefulWidget {
  Shared({Key? key}) : super(key: key);

  @override
  State<Shared> createState() => _SharedState();
}

class _SharedState extends State<Shared> {
  String? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("shared")),
      body: Column(children: [
        Text("shared saved info ${data ?? ""}"),
        TextButton(
            onPressed: () {
              setTheData();
            },
            child: Text("Set The Data")),
        TextButton(
            onPressed: () {
              getTheData();
            },
            child: Text("Get The Data")),
        TextButton(
            onPressed: () {
              removeTheData();
            },
            child: Text("Remove The Data"))
      ]),
    );
  }

  setTheData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString("USER_ID", "This is information ");
  }

  getTheData() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getString("USER_ID");
    print("read value $value");
    setState(() {
      data = value;
    });
  }

  removeTheData() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.remove("USER_ID");
    print("read value $value");
  }
}
