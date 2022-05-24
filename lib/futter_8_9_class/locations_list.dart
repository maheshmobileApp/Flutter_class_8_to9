/*

{} - keys and value
[] - object 
""
90.00

 */

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:textfieldnavigate/futter_8_9_class/location_model.dart';

class LocationList extends StatefulWidget {
  LocationList({Key? key}) : super(key: key);

  @override
  State<LocationList> createState() => _LocationListState();
}

class _LocationListState extends State<LocationList> {
  LocationData? _locationData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: listView(),
      ),
    );
  }

  Widget listView() {
    return ListView.builder(
      itemCount: _locationData?.data?.length ?? 0,
      itemBuilder: (context, index) {
        final locationInfo = _locationData?.data?[index];
        return Card(
          child: Column(
            children: [
              Text(
                locationInfo?.city ?? "",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    getLocations();
  }

  getLocations() async {
    //http://164.52.213.195:8080/salex/get/available/locations
    //body : null
    //headders : Authorization
    /*
   Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI5NDkxNDk5MDIxIiwiZXhwIjozNDUxMzE5ODM4LCJpYXQiOjE2NTEzMTk4Mzh9.zMWY66whOFBZzlFgZdiG9TCoHT28rMOnb7pqkhmCJRwMWMkj7dqH02PsEMF7BnWJ7bdy7e029-USIMZ0drV8BA
    */
    final registerUrl =
        "http://164.52.213.195:8080/salex/get/available/locations";
    final dio = Dio();
    final token =
        "eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiI5NDkxNDk5MDIxIiwiZXhwIjozNDUxMzE5ODM4LCJpYXQiOjE2NTEzMTk4Mzh9.zMWY66whOFBZzlFgZdiG9TCoHT28rMOnb7pqkhmCJRwMWMkj7dqH02PsEMF7BnWJ7bdy7e029-USIMZ0drV8BA";

    Response res = await dio.get(registerUrl,
        options: Options(headers: {"Authorization": "Bearer $token"}));
    print(res.data);
    final result = LocationData.fromJson(res.data);

    setState(() {
      this._locationData = result;
    });
  }
}
