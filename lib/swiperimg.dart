import 'package:flutter/material.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class Swiperimge extends StatefulWidget {
  Swiperimge({Key? key}) : super(key: key);

  @override
  State<Swiperimge> createState() => _SwiperimgeState();
}

class _SwiperimgeState extends State<Swiperimge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("swiper")),
      body: Container(
        margin: EdgeInsets.all(5),
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        constraints: BoxConstraints.expand(height: 200),
        child: Swiper(
          scale: 0.8,
         
          viewportFraction: 0.6,
          itemCount: 23,
          autoplay: true,
          itemBuilder: (BuildContext context, int index){
            return Image.asset("assets/imag.jpg");

          }
          )),
    );
  }
}