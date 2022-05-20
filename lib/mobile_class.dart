class MobileTaskData{
  String?status;
  int?responseCode;
  String?port;
  List<ControllerData>?objlbsRegControllerDTO;
  MobileTaskData({this.status,
  this.responseCode,
  this.port,
  this.objlbsRegControllerDTO});
  MobileTaskData.fromJson(Map<String,dynamic>json){
    status=json["status"];
    responseCode=json["responseCode"];
    port=json['port'];
    // objlbsRegControllerDTO=json["objlbsRegControllerDTO"];
    if(json["objlbsRegControllerDTO"]!=null){
      objlbsRegControllerDTO=<ControllerData>[];
     json ["objlbsRegControllerDTO"].forEach((n) { 
       objlbsRegControllerDTO?.add(ControllerData.fromJson(n));


      });


    }

  }


}
 class ControllerData{
   String?mobilenum;
   String?serialid;
   String?imeinum;
   String?simnum;
   String?username;
   String?emailid;
   String?country;
   String?state;
   String?serviceProvider;
   String?createdid;
   String?createdmodid;
   String?createddtm;
   String?isactive;
   String?otp;
   String?srpid;
   String?lat;
   String?lon;
   String?dob;
   String?gender;
   String?updateddtm;
   String?address;
   String?healthRecord;
   String?createdroleid;
   ControllerData({
     this.mobilenum,
     this.serialid,
     this.simnum,
     this.imeinum,
     this.country,
     this.address,
     this.createddtm,
     this.createdid,
     this.createdmodid,
     this.dob,
     this.emailid,
     this.gender,
     this.healthRecord,
     this.isactive,
     this.lat,
     this.lon,
     this.otp,
     this.serviceProvider,
     this.srpid,
     this.state,
     this.updateddtm,
     this.username,
     this.createdroleid

   });
   ControllerData.fromJson(Map<String,dynamic>json){
     mobilenum=json["mobilenum"];
     serialid=json["serialid"];
     imeinum=json["imeinum"];
     simnum=json["simnum"];
     username=json["username"];
     emailid=json["emailid"];
     country=json["country"];
     state=json["state"];
     serviceProvider=json["serviceProvider"];
     createddtm=json["createddtm"];
     createdmodid=json["createdmodid"];
     createdid=json['createdid'];
     createdroleid=json["createdroleid"];
     imeinum=json["imeinum"];
     otp=json["otp"];
     srpid=json["srpid"];
     lat=json["lat"];
     lon=json["lon"];
     dob=json["dob"];
     gender=json["gender"];
     updateddtm=json["updateddtm"];
     address=json["address"];
     healthRecord=json["healthRecord"];





     


   }


   
 }