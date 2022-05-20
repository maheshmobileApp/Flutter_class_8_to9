import 'package:flutter/material.dart';

class delivery {
  int?page;
  int?per_page;
  int?total;
  int?total_pages;
  List<datadts>?data; 
  dynamic?support;

  delivery({this.page,
  this.per_page,
  this.total,
  this.total_pages,
  this.data,
  this.support});


  delivery.fromjson(Map<String,dynamic>json){
    page=json["?page"];
    per_page=json["per_page"];
    total=json["total"];
    total_pages=json["total_pages"];
    support=json["support"];
    if(json["data"]!=null){
      data=<datadts>[];
      json["data"] .forEach((n){
        data!.add(datadts.fromjson(n));
        

      });
      
      
    }

  }
}

 class datadts{
   int?id;
   String?email;
   String?first_name;
   String?last_name;
   String?avatar;
   datadts({
     this.id,
     this.email,
     this.first_name,
     this.last_name,
     this.avatar,

   });
   datadts.fromjson(Map<String,dynamic>json){


   }
   
  }
  class suprt{
    String?url;
    String?text;
    suprt({
      this.url,
      this.text,
      

    });
    suprt.fromjson(Map<String,dynamic>json){

    }
  }


