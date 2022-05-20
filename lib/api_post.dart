import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:textfieldnavigate/blood_band_model.dart';
import 'package:textfieldnavigate/blood_bank_class.dart';

class ApiPostView extends StatefulWidget {
  ApiPostView({Key? key}) : super(key: key);

  @override
  State<ApiPostView> createState() => _ApiPostViewState();
}

class _ApiPostViewState extends State<ApiPostView> {
  hospiateldata? _storedata;
  // @override
  // void initState() {
  //   super.initState();
  //   PostcallData();
    
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("apipost")),
      body: Container(
        child:(Column(
            children: [
              Container(
                child: ElevatedButton(onPressed: () {
                  
                  PostcallData();
                },
                child: Text("shhow"),)
              ),
             Expanded(
               child: ListView.builder(
                itemCount: _storedata?.nearstbanks?.length??0,
                itemBuilder: (BuildContext context, index) {
                  final inform=_storedata?.nearstbanks![index];
                
                return Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: Colors.lightGreen,
                  
                  child: Column(children: [
                    Text(inform?.par_latitude??""),
                    Text(inform?.par_longitude??""),
                    Text(inform?.hi_hospitalid??""),
                    Text(inform?.hi_hospitalname??""),
                    Text(inform?.address??"",style: TextStyle(color: Colors.pink)),
                    Text(inform?.mdl_lname??""),
                    Text(inform?.ct_lname??""),
                    Text(inform?.ds_lname??""),
                    Text(inform?.hi_districtid??""),
                    Text(inform?.hi_cityid??""),
                    Text(inform?.earth_distance??""),
                    Text(inform?.hi_stateid??""),
                    Text(inform?.par_radius??""),
                    Text(inform?.sc_lname??""),
                    Text(inform?.specialityname??""),
                    Text(inform?.hi_cityid??""),
                    Text(inform?.hi_phoneno1??""),
                    Text(inform?.hi_langitude??""),
                    Text(inform?.hi_lattitude??""),
                    Text(inform?.hi_phoneno2??""),
                    
                    
                  ]),
                    
                );
                
                         }),
             ),
          ])
        )),
      
    );
  }
  PostcallData()async{
    final baseurl="https://citizen.uat.jaesmp.com/hospital/getnearestBloodBanks";
    final obj=Dio();
    final bodyview={
      "par_latitude": "23.26466",
      "par_longitude": "77.40521",
      "par_radius": "10000"
    };
    Response data= await obj.post(baseurl,data:bodyview);
     final result= hospiateldata.fromJson(data.data);
     print(data.data);
    setState(() {
      _storedata=result;
    });
    
  }

}