import 'package:flutter/material.dart';

class CustomTetfield extends StatefulWidget {
  CustomTetfield({Key? key}) : super(key: key);

  @override
  State<CustomTetfield> createState() => _CustomTetfieldState();
}

class _CustomTetfieldState extends State<CustomTetfield> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefix: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.restaurant_menu),
                ))),
      ),
    );
  }
}
