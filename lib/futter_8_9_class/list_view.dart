import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Color.fromARGB(255, 92, 54, 244),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 95, 244, 54),
          ),
          Container(
            height: 100,
            color: Colors.red,
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 92, 54, 244),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 95, 244, 54),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 74, 48, 47),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 92, 54, 244),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 95, 244, 54),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 74, 48, 47),
          ),
          Container(
            height: 100,
            color: Color.fromARGB(255, 92, 54, 244),
          ),
        ],
      ),
    );
  }
}
