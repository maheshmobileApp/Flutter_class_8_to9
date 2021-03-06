import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Counter App")),
      body: Column(children: [
        TextButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text("+")),
        Text("counter value $counter"),
        TextButton(
            onPressed: () {
              setState(() {
                counter--;
              });
            },
            child: Text("-"))
      ]),
    );
  }
}

/*
counter = 0;
+ -> counter ++

- -> counter --


Text("$counter")


TASKK:


Text("")

TextFormFiled(

  onchange:(value){
  }
)

ListView - (TableView,FlatList,ListView)

 */