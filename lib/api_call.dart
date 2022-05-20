import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:textfieldnavigate/tourist_mode.dart';

class ApiCallDemo extends StatefulWidget {
  ApiCallDemo({Key? key}) : super(key: key);

  @override
  State<ApiCallDemo> createState() => _ApiCallDemoState();
}

class _ApiCallDemoState extends State<ApiCallDemo> {
  List<TouristPlace>? touristPlaces;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: touristPlaces?.length ?? 0,
          itemBuilder: (BuildContext context, index) {
            final tourstObj = touristPlaces?[index];
            return Card(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(tourstObj?.tourist_email ?? ""),
                    Text(tourstObj?.tourist_location ?? ""),
                    Text(tourstObj?.tourist_name ?? ""),
                    Image.network("https://reqres.in/img/faces/7-image.jpg")
                  ]),
            );
          }),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getTheDataFromServer();
  }

  getTheDataFromServer() async {
    //step1: construct the api base url
    final requestUrl = "http://restapi.adequateshop.com/api/Tourist?page=2";
    final dioObject = Dio();
    Response responseData = await dioObject.get(requestUrl);
    print("response object is ${responseData.data}");
    final result = TouristData.formJson(responseData.data);
    setState(() {
      this.touristPlaces = result.data;
    });
  }
}
