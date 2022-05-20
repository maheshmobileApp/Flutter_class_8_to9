import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:textfieldnavigate/hospital_class.dart';

class HospitalList extends StatefulWidget {
  HospitalList({Key? key}) : super(key: key);

  @override
  State<HospitalList> createState() => _HospitalListState();
}

class _HospitalListState extends State<HospitalList> {
  HospitalName? _nameddata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("HOSPITALNAMES"),centerTitle: true,),
      body: Container(
        child: Column(children: [
          ElevatedButton(onPressed: (){
            GetHospitalList();
          }, 
          child: Text("click me")),
          Expanded(child: ListView.builder(
            itemCount: _nameddata?.hospitalTypesRev?.length??0,
            itemBuilder: (BuildContext context, index) {
            final namesinform=_nameddata?.hospitalTypesRev![index];
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  gradient:LinearGradient(colors: [
                    Colors.amber,
                    Colors.pink,
                    Colors.purple,
                    ],
                    begin: Alignment.centerLeft,
                    
                    ),
                  borderRadius: BorderRadius.circular(30)),
                
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    
                    backgroundImage:AssetImage("assets/img.jpeg"), ),

                  title: Column(
                    children: [
                      Text(namesinform?.radius??""),
                      Text(namesinform?.lattitude??""),
                      Text(namesinform?.longitude??""),
                      Text(namesinform?.hospitalId??""),
                      Text(namesinform?.distance??""),
                      Text(namesinform?.hospitalName??""),
                      Text(namesinform?.phone1??""),
                      Text(namesinform?.phone2??""),
                      Text(namesinform?.stateName??""),
                      Text(namesinform?.address??""),
                      Text(namesinform?.stateId??""),
                      Text(namesinform?.districtId??""),
                      Text(namesinform?.district??""),
                      Text(namesinform?.mandalId??""),
                      Text(namesinform?.distance??""),
                      Text(namesinform?.mandal??""),
                      Text(namesinform?.cityId??""),
                      Text(namesinform?.city??""),
                      Text(namesinform?.specialityName??""),
                      Text(namesinform?.category??""),
                      Text(namesinform?.chiefComplantId??""),
                      Text(namesinform?.callTypeId??""),
                      Text(namesinform?.ayushId??""),
                      Text(namesinform?.hindiId??""),

                    ],
                  )),
              ),
            );

            
          }))

        ],)
      ),
    );

  }
  GetHospitalList()async{
    final baseurl="https://citizen.uat.jaesmp.com/hospital/getHospitalsListRev";
    final objlist=Dio();
    final bodydata={
    "lattitude":"23.26466",
      "longitude": "77.40521",
     "radius": "10000",
     "category": "1",
     "chiefComplantId": "0"};
      Response view = await objlist.post(baseurl,data: bodydata);
      final resultview=HospitalName.fromJson(view.data);
      print(view.data);
      setState(() {
        _nameddata=resultview;
      });
      
 
  }
}