 //import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';

class SwitchView extends StatefulWidget {
  SwitchView({Key? key}) : super(key: key);

  @override
  State<SwitchView> createState() => _SwitchViewState();
}

class _SwitchViewState extends State<SwitchView> {
  bool switched=false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.teal,
    backgroundColor:switched ?Colors.red:Colors.amberAccent,
      
      appBar: AppBar(title: Text("switch")),

      body: Container(child: Column(children: [
      
        
        
        Switch(
           activeColor: Colors.blue,
            
              activeTrackColor: Colors.red,  
              inactiveThumbColor: Colors.blueAccent,  
              inactiveTrackColor: Colors.orange,  
          value: switched, 
        onChanged: (value){
          setState(() {
            switched=value;
           
            print(switched);
          });
         
        //  Container(color: Colors.amber,);
          if(switched==false){
            setState(() {
              switched ==true;
              Container(color: Colors.amber,);
              
            });
          }
          else{
            setState(() {
              switched==false;
              Container(color: Colors.pink,);
            });
          }
          

        }
        )
      ],)),

    );
  }
}