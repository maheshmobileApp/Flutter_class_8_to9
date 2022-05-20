import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  ListViewBuilder({Key? key}) : super(key: key);

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  List<String> names = ["Avinash", "Gopi", "Sodham", "Venkat", "Mahesh"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: TextButton(
        child: Text("+"),
        onPressed: () {},
      ),
      appBar: AppBar(title: Text("ListView Builder")),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          final data = names[index];
          return GestureDetector(
            onTap: (() {
              showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: Text("Alert"),
                      content: Text("you tapped $index"),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("OK")),
                        TextButton(onPressed: () {}, child: Text("Cancel"))
                      ],
                    );
                  });
            }),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [Text("Name: $data")]),
              ),
            ),
          );
        },
      ),
    );
  }
}

//step 1: Take array 
//ListView.builder(
//itemCount: 100
//itemBuilder:
//
//)
/*

TASK:

click on + button and show the one alert with textfield, alert has two button ok,cance. click on ok button text field add load to listview
 
 */