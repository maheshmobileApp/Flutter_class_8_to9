import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:textfieldnavigate/blood_band_model.dart';

class AppCallDemoWithPostType extends StatefulWidget {
  AppCallDemoWithPostType({Key? key}) : super(key: key);

  @override
  State<AppCallDemoWithPostType> createState() =>
      _AppCallDemoWithPostTypeState();
}

class _AppCallDemoWithPostTypeState extends State<AppCallDemoWithPostType> {
  BloodBankData? _bloodBankData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: _bloodBankData?.nearstbanks?.length ?? 0,
          itemBuilder: ((context, index) {
            final bloodBandkInfo = _bloodBankData?.nearstbanks![index];
            return Card(
              child: Column(children: [
                Text(bloodBandkInfo?.hiHospitalname ?? ""),
                
                
                ]),
            );
          })),
    );
  }

  @override
  void initState() {
    super.initState();
    getTheDataFromServer();
  }

  getTheDataFromServer() async {
    /*
   URL : https://citizen.uat.jaesmp.com/hospital/getnearestBloodBanks
Request Type: POST
Body {
"par_latitude": "23.26466",
"par_longitude": "77.40521",
"par_radius": "10000"
}
    */

    final requestUrl =
        "https://citizen.uat.jaesmp.com/hospital/getnearestBloodBanks";
    final dioObject = Dio();
    final bodyData = {
      "par_latitude": "23.26466",
      "par_longitude": "77.40521",
      "par_radius": "10000"
    };
    Response responseData = await dioObject.post(requestUrl, data: bodyData);
    final bloodBankData = BloodBankData.fromJson(responseData.data);
    setState(() {
      _bloodBankData = bloodBankData;
    });
  }

  /*
  Sharedpref
   */
}
