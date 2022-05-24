import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class RegisterApp extends StatefulWidget {
  RegisterApp({Key? key}) : super(key: key);

  @override
  State<RegisterApp> createState() => _RegisterAppState();
}

class _RegisterAppState extends State<RegisterApp> {
  @override
  Widget build(BuildContext context) {
    final value = ModalRoute.of(context)?.settings.arguments as Map;

    print("print register ************ $value");

    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text("call api"),
          onPressed: () {
            callRegisterApp();
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  callRegisterApp() async {
    //http://164.52.213.195:8080/salex/register
    /*{
  "phonenumber": "8096380085",
  "uname": "Tirumala"
  
} */
    final registerUrl = "http://164.52.213.195:8080/salex/register";
    final dio = Dio();
    final requestBody = {"phonenumber": "9493139793", "uname": "mahesh"};
    Response res = await dio.post(registerUrl, data: requestBody);
    print(res.data);
  }
}
