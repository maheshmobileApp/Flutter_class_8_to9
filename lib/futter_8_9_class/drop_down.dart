import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:textfieldnavigate/futter_8_9_class/location_model.dart';
import 'package:textfieldnavigate/futter_8_9_class/userInfoModel.dart';

class DropDownWidget extends StatefulWidget {
  DropDownWidget({Key? key}) : super(key: key);

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: dropDown()),
    );
  }

  Widget dropDown() {
    return TypeAheadField<Results?>(
      textFieldConfiguration: TextFieldConfiguration(
          controller: _controller,
          autofocus: true,
          style: DefaultTextStyle.of(context)
              .style
              .copyWith(fontStyle: FontStyle.italic),
          decoration: InputDecoration(border: OutlineInputBorder())),
      suggestionsCallback: (pattern) async {
        return Future.delayed(
          Duration(seconds: 1),
          () => getUsers(),
        );
      },
      itemBuilder: (context, suggestion) {
        //final data = suggestion as String;
        return ListTile(
          // leading: Icon(Icons.shopping_cart),
          title: Text(suggestion?.name ?? ""),
          // subtitle: Text('\$${suggestion['price']}'),
        );
      },
      onSuggestionSelected: (suggestion) {
        final data = suggestion as String;
        _controller.text = data;
      },
    );
  }

 static Future<List<Results>?> getUsers() async {
    //https://pokeapi.co/api/v2/pokemon?limit=30&offset=0

    Response res = await Dio().get(
      "https://pokeapi.co/api/v2/pokemon?limit=30&offset=0",
    );
    print(res.data);
    final result = UserInfoModel.fromJson(res.data);

    return result.results;
  }
}

class BackendService {
  static Future<List<Map<String, String>>> getSuggestions(String query) async {
    await Future<void>.delayed(Duration(seconds: 1));

    return List.generate(3, (index) {
      return {
        'name': query + index.toString(),
        'price': Random().nextInt(100).toString()
      };
    });
  }
}

// class Services {
//   static Future<List<String>?> getUsers() async {
//     //https://pokeapi.co/api/v2/pokemon?limit=30&offset=0

//     Response res = await Dio().get(
//       "https://pokeapi.co/api/v2/pokemon?limit=30&offset=0",
//     );
//     print(res.data);
//     final result = UserInfoModel.fromJson(res.data);

//     return result.results;
//   }
// }

class DropDwonValues {
  final String? value;
  final int? id;

  DropDwonValues(this.value, this.id);
}

/*

List of states

[]
itemsBuilder : 
sugge
 */
