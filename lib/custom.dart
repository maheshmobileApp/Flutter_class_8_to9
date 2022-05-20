import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
// import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:rolling_switch/rolling_switch.dart';

class Custom extends StatefulWidget {
  Custom({Key? key}) : super(key: key);

  @override
  State<Custom> createState() => _CustomState();
}

class _CustomState extends State<Custom> {
  bool Swithed=false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Swithed?Colors.red:Colors.green,
      appBar: AppBar(title: Text("custom"),
      ),
      body: Container(child: Column(children: [
        Container(color: Swithed?Colors.red:Colors.green),
      // LiteRollingSwitch(
      //     textOn: "on",
      //     textOff: "off",
      //     textSize: 20,
      //     onChanged: (val){
      //       setState(() {
      //         Swithed=val;
      //       });
      //     },

      //   ),
      
        FlutterSwitch(
          toggleColor: Colors.black,
         
          // width: 70,
          // height: 70,
          activeText: "on",
          activeTextColor: Colors.white,
          inactiveText: "of",
          value: Swithed, 
        onToggle: (val){

          setState(() {
            Swithed=val;
            Navigator.pushNamed(context, "/login");
            
          });

        },
        

        ),
       
      ],)),
    );
  }
}