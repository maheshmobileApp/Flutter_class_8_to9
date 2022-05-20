import 'package:flutter/material.dart';

class SliderView extends StatefulWidget {
  SliderView({Key? key}) : super(key: key);

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView> {
  int _value=5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider")),
      body: Container(child: Center(
        child: Row(children: [
          Icon(Icons.volume_down),
          Slider(
            min: 1.0,
            max: 30.7,
            value: _value.toDouble(), 
            activeColor: Colors.red,
            inactiveColor: Colors.green,
          onChanged: (data){ 
            setState(() {
              _value=data.round();
            });
           })

      ],),)),
    );
  }
}