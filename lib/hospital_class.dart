class HospitalName{
  String?status;
  int?responseCode;
  List<HospitalType>?hospitalTypesRev;
  HospitalName({
    this.status,
    this.responseCode,
    this.hospitalTypesRev
   });
   HospitalName.fromJson(Map<String,dynamic>json){
     status=json["status"];
     responseCode=json["responseCode"];
     if(json["hospitalTypesRev"]!=null){
       hospitalTypesRev=<HospitalType>[];
       json["hospitalTypesRev"].forEach((n){
         hospitalTypesRev!.add(HospitalType.fromJson(n));
   

       });
     }
     
   }
}
class HospitalType{
  Null?radius;
  String?lattitude;
  String?longitude;
  String?hospitalId;
  String?hospitalName;
  String?phone1;
  String?phone2;
  String?address;
  String?stateId;
  String?stateName;
  String?districtId;
  String?district;
  String?mandalId;
  String?mandal;
  String?cityId;
  String?city;
  String?specialityName;
  String?distance;
  String?category;
  String?chiefComplantId;
  String?callTypeId;
  String?ayushId;
  String?hindiId;
  HospitalType({
    this.lattitude,
    this.longitude,
    this.address,
    this.ayushId,
    this.callTypeId,
    this.category,
    this.chiefComplantId,
    this.city,
    this.cityId,
    this.distance,
    this.district,
    this.districtId,
    this.hindiId,
    this.hospitalId,
    this.hospitalName,
    this.mandal,
    this.mandalId,
    this.phone1,
    this.phone2,
    this.radius,
    this.specialityName,
    this.stateId,
    this.stateName
  });
  HospitalType.fromJson(Map<String,dynamic>json){
    lattitude=json['lattitude'];
    longitude=json["longitude"];
    radius=json["radius"];
    hospitalId=json["hospitalId"];
    hospitalName=json["hospitalName"];
    phone1=json["phone1"];
    phone2=json["phone2"];
    address=json["address"];
    stateId=json["stateId"];
    stateName=json["stateName"];
    districtId=json["districtId"];
    distance=json["distance"];
    district=json["district"];
    mandalId=json["mandalId"];
    mandal=json["mandal"];
    cityId=json["cityId"];
    city=json["city"];
    specialityName=json["specialityName"];
    category=json["category"];
    chiefComplantId=json["chiefComplantId"];
    callTypeId=json["callTypeId"];
    ayushId=json["ayushId"];
    hindiId=json["hindiId"];
  

  

  }





  
}