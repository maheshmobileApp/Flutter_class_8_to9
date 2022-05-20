import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:textfieldnavigate/mobile_class.dart';

class MobilePostTask extends StatefulWidget {
  MobilePostTask({Key? key}) : super(key: key);

  @override
  State<MobilePostTask> createState() => _MobilePostTaskState();
}

class _MobilePostTaskState extends State<MobilePostTask> {
  MobileTaskData? _listdata;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("mobilepagepost")),
      body: Container(
        
          child: Column(children: [
            Container(
              child: ElevatedButton(onPressed: () {
                Mobiletask();
                
              },
              child: Text("passdata"),),

            ),
            Expanded(
              child: ListView.builder(
                itemCount: _listdata?.objlbsRegControllerDTO?.length??0,
                itemBuilder: (BuildContextcontext, index) {
                final  inffom=_listdata?.objlbsRegControllerDTO![index];
                return Padding(
                  padding: const EdgeInsets.all(25),
                  child: Card(
                    color: Colors.purpleAccent,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    child: ListTile(
                      subtitle: Text(inffom?.mobilenum??""),
                      leading: CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage("assets/imag.jpg"),),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(inffom?.address??""),
                        Text(inffom?.username??""),
                        Text(inffom?.country??""),
                        Text(inffom?.createddtm??""),
                        Text(inffom?.createdid??""),
                        Text(inffom?.serialid??""),
                        Text(inffom?.imeinum??""),
                        Text(inffom?.createdroleid??""),
                        Text(inffom?.dob??""),
                        Text(inffom?.emailid??""),
                        Text(inffom?.gender??""),
                        Text(inffom?.isactive??""),



                                                 ]),
                    )
                    ),
                );
                
              }))
          ]),
      ),

    );
  }

  Mobiletask() async {
    final urltask = "https://citizen.uat.jaesmp.com/citizen/getlbsReg";
    final obect = Dio();
    final bodymb = {"mobilenum": "8096380038"};
    Response task = await obect.post(urltask, data: bodymb);
    final results = MobileTaskData.fromJson(task.data);
    print(task.data);
    setState(() {
      _listdata = results;
    });
  }
}
