import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  Secondscreen({Key? key}) : super(key: key);
  

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    final args=ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(title: Text("second")),
      body: Container(child: Column(
        children: [
          // ListView.builder(itemBuilder:((context, index) {
          //   return ListTile();
            
          // }))
          // Text(),
          // Text(args[00])
          Text(args["key"]),
          Text(args["kkey1"]),
        ],
        
      ),),
    );
  }
}