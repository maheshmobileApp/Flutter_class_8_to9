import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:textfieldnavigate/delivery.dart';

class ApicallView extends StatefulWidget {
  ApicallView({Key? key}) : super(key: key);

  @override
  State<ApicallView> createState() => _ApicallViewState();
}

class _ApicallViewState extends State<ApicallView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Api call")),
      body: Center(child: Column(children: [
        ElevatedButton(onPressed: (){
         // getdata();
         //viewdata();
         //viewdatas();
        //somedata();
        //buttodata();
        //userdata();
        listdata();
        }, 
        child: Text("submit"))
      ],)),
    );
  }
  
  
   getdata() async{
     final requuest="https://jsonplaceholder.typicode.com/posts";
     final store=Dio();
     Response date=  await store.get(requuest);
     print(date.data);
      }
  viewdata()async{
    final required="https://reqres.in/api/products/3";
    final obj= Dio();
    Response value=await obj.get(required);
    print(value.data);
  }
  
  // viewdatas() async{
  //   String required="https://citizen.uat.jaesmp.com/hospital/getHospitalsListRev"; 

  //   // final Response=http.get(Uri.parse(required));
  //   // print(Response.toString());
  //   final Response= await http.post(Uri.parse(required),body:{
      

  //   } );
  //   print(Response.body);
    
   
    
  // }
  somedata()async{
    final required="https://reqres.in/api/products/3";
    final Response=await http.get(Uri.parse(required));
    print(Response.body);
  }
  buttodata() async{

  final basedataurl="http://restapi.adequateshop.com/api/Tourist?page=2";
  final objectdata=Dio();
  Response calldata=await objectdata.get(basedataurl); 
  print(calldata.data);
  }
 //http://restapi.adequateshop.com/api/Tourist?page=2
 userdata()async{
  // final ulr="https://reqres.in/api/unknown";
   final basur="https://reqres.in/api/unknown/2";
   final ot=Dio();
   Response view=await ot.get(basur);
   
   print(view.data);


 }
 listdata()async{
   final lstdt="https://reqres.in/api/users?page=2";
   final ltob=Dio();
   Response views= await ltob.get(lstdt);
   print(views.data);
    final result=delivery.fromjson(views.data);
    setState(() {
      // this=result.data;
    });
 }

}